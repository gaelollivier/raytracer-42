//
// Object.cpp for raytracer in /home/michar_l//Raytracer/raytracer-42
// 
// Made by loick michard
// Login   <michar_l@epitech.net>
// 
// Started on  Wed Apr 27 18:53:38 2011 loick michard
// Last update Thu Apr 28 19:14:29 2011 gael jochaud-du-plessix
//

#include "Object.hpp"

Object::Object(void)
{

}

Object::Object(vector<ObjectPrimitive*> primitives, const Rotation& rotation,
	       const Point& position, bool isSolid)
{
  _primitives = primitives;
  _rotation = rotation;
  _position = position;
  _isSolid = isSolid;
}

Object::~Object(void)
{
  
}

Vector		Object::getRefractedVector(const Point& intersectPoint,
					   const Vector& vector)
{

}

const ObjectPrimitive&	Object::getPrimitiveAtIndex(int index) const
{
  return (*_primitives[index]);
}

int			Object::getNbPrimitives(void) const
{
  return (_primitives.size());
}

const Rotation&		Object::getRotation(void) const
{
  return (_rotation);
}

const Point&		Object::getPosition(void) const
{
  return (_position);
}

bool			Object::isSolid(void)
{
  return (_isSolid);
}

void			Object::addPrimitive(ObjectPrimitive* primitive)
{
  _primitives.push_back(primitive);
}

void			Object::removePrimitiveAtIndex(int index)
{
  _primitives.erase(_primitives.begin() + index);
}

void			Object::setPosition(const Point& position)
{
  _position = position;
}

void			Object::setRotation(const Rotation& rotation)
{
  _rotation = rotation;
}

void			Object::setSolid(bool solid)
{
  _isSolid = solid;
}