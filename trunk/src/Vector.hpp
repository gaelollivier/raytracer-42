//
// Vector.hpp for raytracer in /home/michar_l//Raytracer/raytracer-42
// 
// Made by loick michard
// Login   <michar_l@epitech.net>
// 
// Started on  Wed Apr 27 22:39:57 2011 loick michard
// Last update Thu Apr 28 19:15:58 2011 gael jochaud-du-plessix
//

#ifndef _VECTOR_H_
#define _VECTOR_H_

class Vector
{
public:
  Vector();
  Vector(double x, double y, double z);
  ~Vector();
  
  double	getX(void) const;
  double	getY(void) const;
  double	getZ(void) const;
  void		setX(double value);
  void		setY(double value);
  void		setZ(double value);

  double	getNorm(void);
  void		rotate(Vector& rotation);
  void		normalize(void);

  Vector&       operator+=(const Vector& vector);
  Vector&       operator-=(const Vector& vector);
  Vector&       operator*=(const Vector& vector);
  template <typename T>
  Vector&       operator+=(T value);
  template <typename T>
  Vector&       operator-=(T value);
  template <typename T>
  Vector&       operator*=(T value);
  template <typename T>
  Vector&       operator/=(T value);

private:
  void		rotateX(double alpha);
  void		rotateY(double alpha);
  void		rotateZ(double alpha);
  double	_x;
  double	_y;
  double	_z;
};

template <class T>
Vector   operator+(const Vector& vector, T value);
template <class T>
Vector   operator-(const Vector& vector, T value);
template <class T>
Vector   operator*(const Vector& vector, T value);
template <class T>
Vector   operator*(T value, const Vector& vector);
template <class T>
Vector   operator/(const Vector& vector, T value);

template <class T>
Vector&	Vector::operator+=(T value)
{
  _x += value;
  _y += value;
  _z += value;
  return (*this);
}

template <class T>
Vector&	Vector::operator-=(T value)
{
  _x -= value;
  _y -= value;
  _z -= value;
  return (*this);
}

template <class T>
Vector&	Vector::operator*=(T value)
{
  _x *= value;
  _y *= value;
  _z *= value;
  return (*this);
}

template <class T>
Vector&	Vector::operator/=(T value)
{
  _x /= value;
  _y /= value;
  _z /= value;
  return (*this);
}

template <class T>
Vector	operator+(const Vector& vector, T value)
{
  Vector newVector = vector;

  newVector += value;
  return (newVector);
}

template <class T>
Vector	operator-(const Vector& vector, T value)
{
  Vector newVector = vector;

  newVector -= value;
  return (newVector);
}

template <class T>
Vector	operator*(const Vector& vector, T value)
{
  Vector newVector = vector;

  newVector *= value;
  return (newVector);
}

template <class T>
Vector	operator*(T value, const Vector& vector)
{
  Vector newVector = vector;

  newVector *= value;
  return (newVector);
}

template <class T>
Vector	operator/(const Vector& vector, T value)
{
  Vector newVector = vector;

  newVector /= value;
  return (newVector);
}

#endif