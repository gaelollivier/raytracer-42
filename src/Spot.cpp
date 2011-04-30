//
// Spot.cpp for raytracer in /home/michar_l//Raytracer/raytracer-42
// 
// Made by loick michard
// Login   <michar_l@epitech.net>
// 
// Started on  Fri Apr 29 16:51:44 2011 loick michard
// Last update Sat Apr 30 16:06:29 2011 loick michard
//

#include <cmath>
#include "Spot.hpp"
#include "Raytracer.hpp"

Spot::Spot(const Point &position, const Color &color,
             double intensity):
  Light(position, color, intensity)
{

}

void	Spot::getLighting(const ObjectPrimitive& primitive,
			  const Point& intersectPoint,
			  const Raytracer &raytracer,
			  Color& directLighting,
			  Color& specularLighting) const
{
  Vector	lightVector = _position - intersectPoint;
  Vector	normal = primitive.getNormalVector(intersectPoint);
  double	scalar = lightVector * normal;
  double	cosa = scalar / 
    (lightVector.getNorm() *normal.getNorm());
  Ray		ray(Color(), intersectPoint, lightVector, 1);
  double    k = -1;
  const ObjectPrimitive*    nearestObject;

  nearestObject = raytracer.getNearestObject(ray, k);
  if (nearestObject && k <= 1 && k > EPSILON)
    directLighting.setColor(0, 0, 0, 0);
  else
    directLighting = _color * cosa;
}