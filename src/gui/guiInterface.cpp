//
// guiInterface.cpp for raytracer in /home/michar_l//Raytracer/raytracer-42-gui
//
// Made by loick michard
// Login   <michar_l@epitech.net>
//
// Started on  Thu May 12 00:09:02 2011 loick michard
// Last update Mon May 16 17:14:10 2011 samuel olivier
//

#include <QMessageBox>
#include <QFileDialog>
#include "gui.hpp"

void RaytracerGUI::closeEvent(QCloseEvent *event)
{
  if (!_isRendering)
    event->accept();
  else
    {
      QMessageBox msgBox;
      msgBox.setText("Un rendu est en cours.");
      msgBox.setInformativeText("Etes-vous sur de vouloir fermer la fenetre?");
      msgBox.setStandardButtons(QMessageBox::Yes | QMessageBox::Cancel);
      msgBox.setDefaultButton(QMessageBox::Cancel);
      int ret =
	QMessageBox::warning(this, tr("Raytracer"),
			     tr("Un rendu est en cours.\n"
				"Etes-vous sur de vouloir fermer la fenetre?"),
			     QMessageBox::Yes
			     | QMessageBox::Cancel,
			     QMessageBox::Cancel);
      if (ret == QMessageBox::Yes)
	{
	  event->accept();
	  _raytracer->stopRendering();
	}
      else
	event->ignore();
    }
}

void RaytracerGUI::sendWarningMessage(string message)
{
  QDateTime time = QDateTime::currentDateTime();
  if (_message != "")
    _message += "<br/>";
  _message += "<span style=\"color:blue;\">";
  _message += time.toString("<b>[dd/mm/yy hh:mm:ss] ").toStdString();
  _message += "Warning: </b>";
  _message += message;
  _message += "</span>";
}

void RaytracerGUI::sendErrorMessage(string message)
{
  QDateTime time = QDateTime::currentDateTime();
  if (_message != "")
    _message += "<br/>";
  _message += "<span style=\"color:red;\">";
  _message += time.toString("<b>[dd/mm/yy hh:mm:ss] ").toStdString();
  _message += "Error: </b>";
  _message += message;
  _message += "</span>";
}

void RaytracerGUI::sendSuccessMessage(string message)
{
  QDateTime time = QDateTime::currentDateTime();
  if (_message != "")
    _message += "<br/>";
  _message += "<span style=\"color:green;\">";
  _message += time.toString("<b>[dd/mm/yy hh:mm:ss] ").toStdString();
  _message += "Success: </b>";
  _message += message;
  _message += "</span>";
}

void RaytracerGUI::sendMessage(string message)
{
  QDateTime time = QDateTime::currentDateTime();
  if (_message != "")
    _message += "<br/>";
  _message += "<span>";
  _message += time.toString("<b>[dd/mm/yy hh:mm:ss] ").toStdString();
  _message += "Info: </b>";
  _message += message;
  _message += "</span>";
}

void    RaytracerGUI::pauseRendering(void)
{
  sendMessage("Rendu mis en pause");
  _timer->setSingleShot(true);
  _raytracer->pauseRendering();
  _pause = true;
}

void    RaytracerGUI::renderingHasFinished(void)
{
  if (_isRendering)
    {
      sendSuccessMessage(tr("Rendu termine").toStdString());
      _isRendering = false;
      _timer->setSingleShot(true);
      _ui->_progressBar->setHidden(true);
    }
}

void    RaytracerGUI::renderingHasBegun(void)
{

}

void    RaytracerGUI::renderingHasProgressed(double progress)
{
  _progress = progress * (_ui->_progressBar->maximum() -
			  _ui->_progressBar->minimum()) +
    _ui->_progressBar->minimum();
}

void    RaytracerGUI::stopRendering(void)
{
  _raytracer->stopRendering();
  _pause = false;
}

void    RaytracerGUI::loadScene(void)
{
  string scene =
    QFileDialog::getOpenFileName(this, tr("Charger une scene"),
				 "", "*.xml;;", 0,
				 QFileDialog::DontUseNativeDialog).toStdString();
  if (scene != "")
    {
      _scene->loadFromFile(scene, this);
      _ui->_console->setHtml(_message.c_str());
      _ui->_console->moveCursor(QTextCursor::End);
    }
}

void  RaytracerGUI::pixelHasBeenRendered(int x, int y, Color color)
{
  if (_image)
    _image->setPixel(x, y, QColor(color._r, color._g,
                                  color._b, color._a).rgba());
}

void    RaytracerGUI::startRender()
{
  if (_scene != NULL && _scene->isValid())
  {
    setConfiguration();
    _timer->setSingleShot(false);
    _timer->start();
    if (!_isRendering)
    {
      if (_image)
	delete _image;
      _image = new QImage(_ui->_width->value(),
                          _ui->_height->value(),
                          QImage::Format_ARGB32);
    }
    try
    {
      _ui->_progressBar->setHidden(false);
      if (_pause)
	sendSuccessMessage(tr("Reprise du rendu").toStdString());
      else
	sendSuccessMessage(tr("Depart du rendu").toStdString());
      _pause = false;
      _raytracer->launchRendering();
      _isRendering = true;
    }
    catch(int error)
    {
      std::cerr << "ERREUR" << error << std::endl;
    }
  }
  else
    sendErrorMessage("You must load a scene before trying to make a render.");
}

void		RaytracerGUI::saveImage()
{
  int   found;
  vector<string> validFormat(4);
  validFormat[0] = "png";
  validFormat[1] = "gif";
  validFormat[2] = "bmp";
  validFormat[3] = "jpeg";
  string format;

  QString file = QFileDialog::getSaveFileName(this, "Enregistrer une scene", QString(), "*.png;;*.gif;;*.jpeg;;*.bmp", 0, QFileDialog::DontUseNativeDialog);
  if (file != "")
    {
      format = file.toStdString();
      found = format.find(".");
      format = format.substr(found + 1);
      if (format.compare(validFormat[0]) != 0 &&
          format.compare(validFormat[1]) != 0 &&
          format.compare(validFormat[2]) != 0 &&
          format.compare(validFormat[3]) != 0)
        {
          format = "png";
          file += ".png";
        }
      _image->save(file);
    }
}
