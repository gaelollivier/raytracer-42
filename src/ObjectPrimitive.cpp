//
// ObjectPrimitive.cpp for raytracer in /home/michar_l//Raytracer/raytracer-42
// 
// Made by loick michard
// Login   <michar_l@epitech.net>
// 
// Started on  Wed Apr 27 18:55:34 2011 loick michard
// Last update Sat Apr 30 17:51:19 2011 loick michard
//

#include "ObjectPrimitive.hpp"

ObjectPrimitive::ObjectPrimitive():
  _object(NULL)
{

}

ObjectPrimitive::ObjectPrimitive(Object *object,
				 const Point& absolutePosition,
				 const Rotation& rotation,
				 const Material& material):
  _object(object), _absolutePosition(absolutePosition),
  _rotation(rotation), _material(material)
{

}

const Object&         ObjectPrimitive::getObject(void) const
{
  return (*_object);
}

const Point&          ObjectPrimitive::getPosition(void) const
{
  return (_absolutePosition);
}

const Rotation&       ObjectPrimitive::getRotation(void) const
{
  return (_rotation);
}

const Material&       ObjectPrimitive::getMaterial(void) const
{
  return (_material);
}

void          ObjectPrimitive::setObject(Object *object)
{
  _object = object;
}

void          ObjectPrimitive::setPosition(const Point& position)
{
  _absolutePosition = position;
}

void          ObjectPrimitive::setRotation(const Rotation& rotation)
{
  _rotation = rotation;
}

void          ObjectPrimitive::setMaterial(const Material& material)
{
  _material = material;
}

inline Ray           ObjectPrimitive::getRayAtSimplePosition(const Ray& ray) const
{
  Ray	      modified = ray;
  Vector      vector = ray._vector;
  Point       point = ray._point;

  point -= _absolutePosition;
  if (_rotation._x || _rotation._y || _rotation._z)
    {
      point.rotate(_rotation, 1);
      vector.rotate(_rotation, 1);
    }
  modified.setVector(vector);
  modified.setPoint(point);

  return (modified);
}

Vector		ObjectPrimitive::getReflectedVector(const Point& intersectPoint, const Vector& vector) const
{
  Vector	normal = this->getNormalVector(intersectPoint);
  double	scal = normal * vector;

  normal._x = - 2 * normal._x * scal + vector._x;
  normal._y = - 2 * normal._y * scal + vector._y;
  normal._z = - 2 * normal._z * scal + vector._z;
  return (normal);
}