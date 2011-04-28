//
// BoundingBox.hpp for raytracer in /home/jochau_g//data/dev/c/raytracer/raytracer-42
// 
// Made by gael jochaud-du-plessix
// Login   <jochau_g@epitech.net>
// 
// Started on  Tue Apr 26 18:49:27 2011 gael jochaud-du-plessix
// Last update Thu Apr 28 15:57:09 2011 gael jochaud-du-plessix
//

#ifndef _BOUNDINGBOX_H_
#define _BOUNDINGBOX_H_

#include "Vector.hpp"
#include "Point.hpp"

class BoundingBox
{
public:
  BoundingBox();
  ~BoundingBox();
  
  Point		getCenterPosition() const;
  const Point&	getVertex1() const;
  const Point&	getVertex2() const;
private:
  Point	_vertex1;
  Point	_vertex2;
};

#endif