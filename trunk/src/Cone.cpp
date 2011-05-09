//
// Cone.cpp for raytracer in /home/michar_l//Raytracer/raytracer-42
// 
// Made by loick michard
// Login   <michar_l@epitech.net>
// 
// Started on  Fri Apr 29 10:41:20 2011 loick michard
// Last update Thu May  5 19:44:11 2011 samuel olivier
//

#include <cmath>
#include <vector>
#include "Raytracer.hpp"
#include "Cone.hpp"
#include "EquationSolver.hpp"

Cone::Cone(Object*object,
		   const Point& absolutePosition,
		   const Rotation& rotation,
		   const Material& material,
		   double angle) : ObjectPrimitive(object,absolutePosition,
						    rotation, material),
				    _angle(angle)
{

}

void		Cone::setAngle(double angle)
{
  _angle = angle;
}

void		Cone::getMappedCoords(const Point& intersectPoint,
				double& x, double &y) const
{
  Point newPoint = intersectPoint - _absolutePosition;
  Vector vn(0, 0, -1);
  Vector ve(1, 0, 0);

  y = -newPoint._z;
  newPoint.rotate(_rotation);
  newPoint.normalize();
  double phi = acos(- (vn * newPoint));
  double theta = (acos((newPoint * ve) / sin(phi))) / (2 * M_PI);
  vn *= ve;
  double y2;
  if (vn * newPoint > 0)
    y2 = theta;
  else
    y2 =  1 - theta;
  x = y2;
}

void
Cone::addIntersectionWithRay(const Ray& ray,
			     vector<struct s_intersected_object>&
			     intersection) const
{
  Ray           newRay;
  double        a;
  double        b;
  double        c;
  double	tan2;

  newRay = getRayAtSimplePosition(ray);
  tan2 = pow(tan(_angle), 2);
  a = newRay._vector._x * newRay._vector._x +
    newRay._vector._y * newRay._vector._y -
    newRay._vector._z * newRay._vector._z / tan2;
  b = 2 * (newRay._point._x * newRay._vector._x +
           newRay._point._y * newRay._vector._y -
           newRay._point._z * newRay._vector._z / tan2);
  c = newRay._point._x * newRay._point._x +
    newRay._point._y * newRay._point._y -
    newRay._point._z * newRay._point._z / tan2;
  vector<double> solutions = 
    EquationSolver::solveQuadraticEquation(a, b, c);
  vector<double> validSolutions;
  for (unsigned int i = 0 ; i < solutions.size(); i++)
    if (solutions[i] > EPSILON)
      {
        Point   intersectPoint = ray._point + ray._vector * solutions[i];
        double x, y;
        getMappedCoords(intersectPoint, x, y);
        if (!_material.isLimitedAtPoint(x, y))
          validSolutions.push_back(solutions[i]);
      }
  if (validSolutions.size() > 0)
    intersection.push_back((t_intersected_object){this, validSolutions});
}

void                  Cone::intersectWithRay(const Ray& ray,
						 ObjectPrimitive*& primitive,
						 double &res) const
{
  Ray           newRay;
  double        a;
  double        b;
  double        c;
  double	tan2;

  newRay = getRayAtSimplePosition(ray);
  tan2 = pow(tan(_angle), 2);
  a = newRay._vector._x * newRay._vector._x +
    newRay._vector._y * newRay._vector._y -
    newRay._vector._z * newRay._vector._z / tan2;
  b = 2 * (newRay._point._x * newRay._vector._x +
           newRay._point._y * newRay._vector._y -
           newRay._point._z * newRay._vector._z / tan2);
  c = newRay._point._x * newRay._point._x +
    newRay._point._y * newRay._point._y -
    newRay._point._z * newRay._point._z / tan2;
  vector<double> solutions =
    EquationSolver::solveQuadraticEquation(a, b, c);
  for (unsigned int i = 0; i < solutions.size(); i++)
    {
      if (solutions[i] > EPSILON && (solutions[i] < res ||  res < 0))
        {
          Point intersectPoint = ray._point + ray._vector * solutions[i];
          double x, y;
          getMappedCoords(intersectPoint, x, y);
          if (!_material.isLimitedAtPoint(x, y))
            {
              primitive = (ObjectPrimitive*)this;
              res = solutions[i];
            }
        }
    }
}

Vector		Cone::getNormalVector(const Point& intersectPoint,
				      const Vector& viewVector) const
{
  // Vector	normal = intersectPoint - _absolutePosition;
  // normal._z = -normal._z * _angle;
  Vector	normal(intersectPoint._x - _absolutePosition._x,
		       intersectPoint._y - _absolutePosition._y,
		       _absolutePosition._z * _angle * intersectPoint._z);
  double	cosA = viewVector * normal
    / (viewVector.getNorm() * normal.getNorm());

  // if (cosA <= 0)
  //   return (normal.normalize() * -1);
  return (normal.normalize());
}

bool		Cone::isInBoundingBox(BoundingBox& box) const
{
  box = box;
  return (true);
}