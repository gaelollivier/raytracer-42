//
// Plan.hpp for raytracer in /home/michar_l//Raytracer/raytracer-42
// 
// Made by loick michard
// Login   <michar_l@epitech.net>
// 
// Started on  Sat Apr 30 10:17:13 2011 loick michard
// Last update Wed May  4 12:13:19 2011 loick michard
//

#ifndef _PLAN_HPP_
#define _PLAN_HPP_

#include "ObjectPrimitive.hpp"

class Plan : public ObjectPrimitive
{
public:
  Plan(Object*object,
	 const Point& absolutePosition,
	 const Rotation& rotation,
	 const Material& material);

  void	setLimitX(double limitX);
  void	setLimitY(double limitY);
  double	getLimitX(void);
  double	getLimitY(void);

  void  getMappedCoords(const Point& intersectPoint,
			double& x, double &y) const;
  void	addIntersectionWithRay(const Ray& ray,
			       vector<struct s_intersected_object>&
			       intersection) const;
  void	intersectWithRay(const Ray& ray,
			 ObjectPrimitive*& primitive, double &res) const;
  Vector	getNormalVector(const Point& intersectPoint,
				const Vector& viewVector) const;
  Vector	getRefractedVector(const Point& intersectPoint,
				   const Ray& ray) const;
  bool		isInBoundingBox(BoundingBox& box) const;
private:
  double	_limitX;
  double	_limitY;
};

#endif