//
// ServerEntry.hpp for raytracer in /home/jochau_g//Desktop/raytracer-42/src
// 
// Made by gael jochaud-du-plessix
// Login   <jochau_g@epitech.net>
// 
// Started on  Thu May 26 18:14:23 2011 gael jochaud-du-plessix
// Last update Sun May 29 16:01:34 2011 gael jochaud-du-plessix
//

#ifndef _SERVERENTRY_HPP_
#define _SERVERENTRY_HPP_

#include <QObject>
#include <QTcpSocket>
#include <QString>

#include "ClusterClient.hpp"

class ServerEntry : public QObject
{
Q_OBJECT

public:
  static const int      FREE = 0;
  static const int      WAITING_REQUEST = 1;
  static const int      DOWNLOADING_RESSOURCES = 2;
  static const int      PROCESSING_RESSOURCES = 3;
  static const int      RAYTRACING = 4;
  static const int      SENDING_RESPONSE = 5;

  ServerEntry();
  ServerEntry(ClusterClient* clusterClient, QString ip, int port,
	      int status=0, int progress=0);
  ~ServerEntry();

  QString&	getIp(void);
  void		setIp(QString& ip);
  int		getPort(void);
  void		setPort(int port);
  int		getStatus(void);
  void		setStatus(int status);
  int		getProgress(void);
  void		setProgress(int progress);

  bool		isConnectionOpened(void);
  void		openConnection(void);

public slots:
  void		onConnectionOpened(void);
  void		onConnectionClosed(void);

private:
  ClusterClient*	_clusterClient;
  QString		_ip;
  int			_port;
  int			_status;
  int			_progress;
  QTcpSocket*		_socket;
};

#endif