//
// Cylinder.cpp for raytracer in /home/michar_l//Raytracer/raytracer-42
// 
// Made by loick michard
// Login   <michar_l@epitech.net>
// 
// Started on  Fri Apr 29 10:41:20 2011 loick michard
// Last update Wed May  4 11:55:16 2011 samuel olivier
//

#include <cmath>
#include <vector>
#include "Raytracer.hpp"
#include "Cylinder.hpp"
#include "EquationSolver.hpp"

Cylinder::Cylinder(Object*object,
		   const Point& absolutePosition,
		   const Rotation& rotation,
		   const Material& material,
		   double radius) : ObjectPrimitive(object, absolutePosition,
						    rotation, material),
				    _radius(radius)
{

}

void		Cylinder::setRadius(double r)
{
  _radius = r;
}

Color		Cylinder::getColor(const Point& intersectPoint) const
{
  if (_material.isTextured() == false)
    return (_material.getColor(0, 0));
  Point newPoint = intersectPoint - _absolutePosition;
  Vector vn(0, 0, -1);
  Vector ve(1, 0, 0);

  newPoint.rotate(_rotation);
  newPoint.normalize();
  double phi = acos(- (vn * newPoint));
  double x = phi / M_PI;
  double theta = (acos((newPoint * ve) / sin(phi))) / (2 * M_PI);
  vn *= ve;
  double y;
  if (vn * newPoint > 0)
    y = theta;
  else
    y =  1 - theta;
  return (_material.getColor(y, x));
}

void
Cylinder::addIntersectionWithRay(const Ray& ray,
				 vector<struct s_intersected_object>&
				 intersection) const
{
  Ray           newRay;
  double        a;
  double        b;
  double        c;

  newRay = getRayAtSimplePosition(ray);
  a = newRay._vector._x * newRay._vector._x +
    newRay._vector._y * newRay._vector._y;
  b = 2 * (newRay._point._x * newRay._vector._x +
           newRay._point._y * newRay._vector._y);
  c = newRay._point._x * newRay._point._x +
    newRay._point._y * newRay._point._y -
    _radius * _radius;
  vector<double> solutions = 
    EquationSolver::solveQuadraticEquation(a, b, c);
  for (unsigned int i = 0 ; i++ ; i < solutions.size())
    if (solutions[i] > EPSILON)
      {
	intersection.push_back((t_intersected_object){this, solutions});
	break;
      }
}

void                  Cylinder::intersectWithRay(const Ray& ray,
						 ObjectPrimitive*& primitive,
						 double &res) const
{
  Ray           newRay;
  double        a;
  double        b;
  double        c;

  newRay = getRayAtSimplePosition(ray);
  a = newRay._vector._x * newRay._vector._x +
    newRay._vector._y * newRay._vector._y;
  b = 2 * (newRay._point._x * newRay._vector._x +
           newRay._point._y * newRay._vector._y);
  c = newRay._point._x * newRay._point._x +
    newRay._point._y * newRay._point._y -
    _radius * _radius;
  vector<double> solutions =
    EquationSolver::solveQuadraticEquation(a, b, c);
  for (unsigned int i = 0; i < solutions.size(); i++)
    {
      if (solutions[i] > EPSILON && (solutions[i] < res ||  res < 0))
        {
	  primitive = (ObjectPrimitive*)this;
	  res = solutions[i];
	}
    }
}

Vector		Cylinder::getNormalVector(const Point& intersectPoint,
					  const Vector& viewVector) const
{
  Vector	normal = intersectPoint - _absolutePosition;
  normal._z = 0;
  double	cosA = viewVector * normal;

  cosA = cosA / (viewVector.getNorm() * normal.getNorm());
  if (cosA <= 0)
    return (normal.normalize() * -1);
  return (normal.normalize());
}

bool		Cylinder::isInBoundingBox(BoundingBox& box) const
{
  box = box;
  return (true);
}
