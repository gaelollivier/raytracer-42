//
// ServerEntry.cpp for raytracer in /home/jochau_g//Desktop/raytracer-42/src
// 
// Made by gael jochaud-du-plessix
// Login   <jochau_g@epitech.net>
// 
// Started on  Thu May 26 18:17:38 2011 gael jochaud-du-plessix
// Last update Mon May 30 21:48:57 2011 gael jochaud-du-plessix
//

#include <sstream>
#include <QHostAddress>

#include "ServerEntry.hpp"
#include "ClusterClient.hpp"
#include "ClusterServer.hpp"
#include "Resources.hpp"

ServerEntry::ServerEntry():
  _clusterClient(NULL), _ip(), _port(0), _status(0), _progress(0),
  _socket(NULL), _currentRequest(-1)
{  
}

ServerEntry::ServerEntry(ClusterClient* clusterClient, QString ip, int port,
			 int status, int progress):
  _clusterClient(clusterClient), _ip(ip), _port(port), _status(status),
  _progress(progress), _socket(NULL), _currentRequest(-1)
{  
}

ServerEntry::~ServerEntry()
{
  if (_socket)
    {
      _socket->close();
      delete _socket;
    }
}

QString&	ServerEntry::getIp(void)
{
  return (_ip);
}

void		ServerEntry::setIp(QString& ip)
{
  _ip = ip;
}

int		ServerEntry::getPort(void)
{
  return (_port);
}

void		ServerEntry::setPort(int port)
{
  _port = port;
}

int		ServerEntry::getStatus(void)
{
  return (_status);
}

void		ServerEntry::setStatus(int status)
{
  _status = status;
}

int		ServerEntry::getProgress(void)
{
  return (_progress);
}

void		ServerEntry::setProgress(int progress)
{
  _progress = progress;
}

bool		ServerEntry::isConnectionOpened(void)
{
  return (!(!_socket || _socket->state() != QAbstractSocket::ConnectedState));
}

void		ServerEntry::openConnection(void)
{
  if (isConnectionOpened())
    return ;
  if (!_socket)
    {      
      _socket = new QTcpSocket();
      connect(_socket, SIGNAL(connected()), this,
	      SLOT(onConnectionOpened()));
      connect(_socket, SIGNAL(disconnected()), this,
	      SLOT(onConnectionClosed()));
      connect(_socket, SIGNAL(readyRead()), this,
	      SLOT(onDataReceived()));
    }
  _socket->abort();
  _socket->connectToHost(QHostAddress(_ip), _port);
}

void		ServerEntry::onConnectionOpened(void)
{
  ostringstream	portStr;
  portStr << _port;
  _clusterClient->getInterface()
    ->sendSuccessMessage(tr("Connection etablished to server "
			    "<strong>%1:%2</strong>")
			 .arg(_ip, QString(portStr.str().c_str()))
			 .toStdString());
}

void		ServerEntry::onConnectionClosed(void)
{
  ostringstream	portStr;
  portStr << _port;
  _clusterClient->getInterface()
    ->sendMessage(tr("Connection to server <strong>%1:%2</strong> "
		     "closed").arg(_ip, QString(portStr.str().c_str()))
		  .toStdString());
  _clusterClient->removeFromServersList(this);
  deleteLater();
}

bool		ServerEntry::requestSection(QRect section)
{
  if (!isConnectionOpened())
    return (false);
  QByteArray	packet;
  QDataStream	stream(&packet, QIODevice::WriteOnly);
  stream << (int)ServerEntry::REQUEST_SECTION;
  stream << (int)_clusterClient->getSessionId();
  stream << section;
  _socket->write(packet);
  return (true);
}

void		ServerEntry::onDataReceived(void)
{
  QDataStream	stream(_socket);
  if (_currentRequest == -1)
    {
      if (_socket->bytesAvailable() < sizeof(int))
	return ;
      stream >> _currentRequest;
    }
  if (_currentRequest == ClusterServer::REQUEST_SESSION_DATA)
    {
      Resources::getInstance()
	->createResources(_clusterClient->getScene(),
			  &_clusterClient->getRenderingConfiguration());
      string resourcesStr =  Resources::getInstance()->toStr();
      string renderingConfStr =
	_clusterClient->getRenderingConfiguration().toStr();
      QByteArray resourcesBytes(resourcesStr.c_str(), resourcesStr.size());
      QByteArray renderingConfBytes(renderingConfStr.c_str(),
				    renderingConfStr.size());
      {
	QByteArray  packet;
	QDataStream stream(&packet, QIODevice::ReadWrite);
	stream << (int)ServerEntry::SEND_SESSION_DATAS;
	_socket->write(packet);
      }
      {
	QByteArray  packet;
	QDataStream stream(&packet, QIODevice::ReadWrite);
	stream << (int)0;
	stream << resourcesBytes;
	stream.device()->seek(0);
	stream << (int)(packet.size() - sizeof(int));
	_socket->write(packet);
      }
    }
}
