//
// ClusterServerThread.hpp for raytracer in /home/jochau_g//Desktop/raytracer-42/src
// 
// Made by gael jochaud-du-plessix
// Login   <jochau_g@epitech.net>
// 
// Started on  Mon May 23 18:54:45 2011 gael jochaud-du-plessix
// Last update Sun May 29 15:11:37 2011 gael jochaud-du-plessix
//

#ifndef _CLUSTERSERVERTHREAD_HPP_
#define _CLUSTERSERVERTHREAD_HPP_

#include <QObject>
#include <QThread>
#include <QUrl>
#include <QNetworkAccessManager>
#include <QTimer>
#include <QTcpServer>
#include <QTcpSocket>

#include <string>

using namespace std;

class ClusterServer;

class ClusterServerThread : public QThread
{
Q_OBJECT

public:
  static const int	CENTRAL_REGISTER = 0;
  static const int	CLIENT_LISTENER = 1;

  ClusterServerThread(ClusterServer* clusterServer, int type);
  ~ClusterServerThread();

  void		run(void);

public slots:
  void		readCentralServerResponse(QNetworkReply* reply);
  void		registerToCentralServer(void);
  void		newConnection(void);
  void		clientDisconnect(void);

private:
  int				_type;
  ClusterServer*		_clusterServer;
  QNetworkAccessManager*	_networkManager;
  QTimer*			_timer;
  QTcpServer*			_tcpServer;
  bool				_stopReportConnectionError;
  QTcpSocket*			_currentClientSocket;
};

#endif