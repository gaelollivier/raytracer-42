//
// Ray.cpp for raytracer in /home/olivie_a//rendu/cpp/raytracer-42
// 
// Made by samuel olivier
// Login   <olivie_a@epitech.net>
// 
// Started on  Thu Apr 28 18:50:52 2011 samuel olivier
// Last update Sat Apr 30 13:35:36 2011 gael jochaud-du-plessix
//

#include "Ray.hpp"

Ray::Ray()
{

}
#include <iostream>
Ray::Ray(const Point& point, const Vector& vector):
  _point(point), _vector(vector)
{  
}

Ray::Ray(const Color& color, const Point& point,
	 const Vector& vector, double refractiveIndex):
  _color(color), _point(point), _vector(vector),
  _refractiveIndex(refractiveIndex)
{

}

const Color&	Ray::getColor() const
{
  return (_color);
}

const Point&	Ray::getPoint() const
{
  return (_point);
}

const Vector&	Ray::getVector() const
{
  return (_vector);
}

double	Ray::getRefractiveIndex() const
{
  return (_refractiveIndex);
}

void	Ray::setColor(const Color& color)
{
  _color = color;
}

void	Ray::setPoint(const Point& point)
{
  _point = point;
}

void	Ray::setVector(const Vector& vector)
{
  _vector = vector;
}

void	Ray::setRefractiveIndex(double refractiveIndex)
{
  _refractiveIndex = refractiveIndex;
}