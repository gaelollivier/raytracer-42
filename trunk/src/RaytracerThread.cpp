//
// RaytracerThread.cpp for raytracer in /home/jochau_g//data/dev/c/raytracer/raytracer-42
// 
// Made by gael jochaud-du-plessix
// Login   <jochau_g@epitech.net>
// 
// Started on  Fri Apr 29 12:07:49 2011 gael jochaud-du-plessix
// Last update Fri Apr 29 17:03:39 2011 samuel olivier
//

#include "Raytracer.hpp"
#include "RaytracerThread.hpp"

RaytracerThread::RaytracerThread(Raytracer* raytracer):
  _raytracer(raytracer), _launched(false), _isInit(false), _progress(0),
  _image(NULL)
{

}

RaytracerThread::~RaytracerThread()
{
  if (_image)
    delete _image;
}

#include <iostream>

void		RaytracerThread::run(void)
{
  const Scene*	scene = _raytracer->getScene();
  int		imageWidth = _raytracer->getRenderingConfiguration()
    ->getWidth();
  int		imageHeight = _raytracer->getRenderingConfiguration()
    ->getHeight();

  if (!_isInit)
    initBeforeLaunching();
  _launched = true;
  while (_launched)
    {
      Point	pixelToRender = _raytracer->getPixelToRender(_progress);
      std::cout << "Pixel: " << pixelToRender.getX() << " : "
		<< pixelToRender.getY() << std::endl;
      _progress += 1.f / (imageWidth * imageHeight);
    }
}

void	RaytracerThread::stop(void)
{
  _launched = false;
  _isInit = false;
}

void	RaytracerThread::pause(void)
{
  _launched = false;
}

void	RaytracerThread::initBeforeLaunching(void)
{
  int	width = _raytracer->getRenderingConfiguration()->getWidth();
  int	height = _raytracer->getRenderingConfiguration()->getHeight();

  _raytracedPixels.resize(width);
  for (int i = 0; i < width; i++)
    {
      _raytracedPixels[i].resize(height);
      for (int j = 0; j < height; j++)
	_raytracedPixels[i][j] = false;
    }
  if (_image)
    delete _image;
  _image = new QImage(width, height, QImage::Format_ARGB32);
  _progress = 0.f;
}