//
// Plan.cpp for raytracer in /home/michar_l//Raytracer/raytracer-42
// 
// Made by loick michard
// Login   <michar_l@epitech.net>
// 
// Started on  Sat Apr 30 10:19:08 2011 loick michard
// Last update Wed May  4 12:18:13 2011 loick michard
//

#include <vector>
#include "Raytracer.hpp"
#include "Plan.hpp"

Plan::Plan(Object*object,
	       const Point& absolutePosition,
	       const Rotation& rotation,
	       const Material& material): 
  ObjectPrimitive(object, absolutePosition, rotation, material),
  _limitX(-1), _limitY(-1)
{

}

void  Plan::setLimitX(double limitX)
{
  _limitX = limitX;
}

void  Plan::setLimitY(double limitY)
{
  _limitY = limitY;
}

double        Plan::getLimitX(void)
{
  return (_limitX);
}

double        Plan::getLimitY(void)
{
  return (_limitY);  
}


void  Plan::getMappedCoords(const Point& intersectPoint,
		      double& x, double &y) const
{
  Point simplePoint = intersectPoint - _absolutePosition;
  simplePoint.rotate(_rotation);
  x = simplePoint._x;
  y = simplePoint._y;
}

void		       Plan::addIntersectionWithRay(const Ray& ray, vector<struct s_intersected_object>& intersection) const
{
  Ray           newRay;

  newRay = getRayAtSimplePosition(ray);
  if (newRay._vector._z == 0)
    return ;
  double result(- newRay._point._z / newRay._vector._z);
  if (result < EPSILON)
    return ;
  vector<double> k;
  k.push_back(result);
  intersection.push_back((t_intersected_object){this, k});
}

#include <iostream>

void                  Plan::intersectWithRay(const Ray& ray, ObjectPrimitive*& primitive, double &res) const
{
  Ray           newRay;

  newRay = getRayAtSimplePosition(ray);
  if (newRay._vector._z == 0)
    return ;
  double result(- newRay._point._z / newRay._vector._z);
  if (result <= EPSILON)
    return ;
  if (result < res || res < 0)
    {
      if (_limitX > 0 || _limitY > 0)
      	{
      	  Point	intersectPoint = newRay._point + newRay._vector * result;
      	  if (_limitX > 0 && ((intersectPoint._x < 0)
      			      || (intersectPoint._x > _limitX)))
      	    return ;
      	  if (_limitY > 0 && ((intersectPoint._y < 0)
      			      || (intersectPoint._y > _limitY)))
      	    return ;
      	}
      primitive = (ObjectPrimitive*)this;
      res = result;
    }
}

Vector		Plan::getNormalVector(const Point& intersectPoint,
				      const Vector& viewVector) const
{
  Vector	normal(0, 0, 1);
  normal.rotate(_rotation);
  double        cosA = viewVector * normal;
  cosA = cosA / (viewVector.getNorm() * normal.getNorm());
  if (cosA < 0)
    return (normal * -1);
  return (normal);
}

bool		Plan::isInBoundingBox(BoundingBox& box) const
{
  box = box;
  return (true);
}