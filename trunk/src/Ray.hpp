//
// Ray.hpp for raytracer in /home/michar_l//Raytracer
// 
// Made by loick michard
// Login   <michar_l@epitech.net>
// 
// Started on  Wed Apr 27 15:11:51 2011 loick michard
// Last update Sun May  1 15:49:02 2011 samuel olivier
//

#ifndef _RAY_HPP_
#define _RAY_HPP_

#include "Color.hpp"
#include "Point.hpp"
#include "Vector.hpp"

class Ray
{
public:
  Ray();
  Ray(const Point& point,
      const Vector& vector);
  Ray(const Color& color, const Point& point,
      const Vector& vector, double refractiveIndex);

  void		setColor(const Color& color);
  void		setPoint(const Point& point);
  void		setVector(const Vector& vector);
  void		setRefractiveIndex(double refractiveIndex);

  const Color&	getColor() const;
  const Point&	getPoint() const;
  const Vector&	getVector() const;
  double	getRefractiveIndex() const;

  Color				_color;
  Point				_point;
  Vector			_vector;
  double			_refractiveIndex;
  int				_reflectionLevel;
  double			_reflectionIntensity;
  int				_refractionLevel;
  double			_refractionIntensity;
};

#endif
