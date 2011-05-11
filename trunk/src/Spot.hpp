//
// Spot.hpp for raytracer in /home/michar_l//Raytracer/raytracer-42
//
// Made by loick michard
// Login   <michar_l@epitech.net>
//
// Started on  Fri Apr 29 16:48:11 2011 loick michard
// Last update Wed May 11 18:56:51 2011 melvin laplanche
//

#ifndef _SPOT_HPP_
#define _SPOT_HPP_

#include "Light.hpp"

class	Spot : public Light
{
public :
  Spot(void);
  Spot(const Point &position, const Color& color, double intensity=1);

  void   setDirectLightPow(double value);
  double getDirectLightPow(void) const;

  void getLighting(const ObjectPrimitive& primitive,
		   const Point& intersectPoint,
		   const Raytracer &raytracer,
		   const Vector& ray,
		   Color& directLighting,
		   Color& specularLighting) const;

  Color getDirectLighting(const Raytracer& raytracer,
			  Ray& ray) const;

private:
  double _directLightPow;
};

#endif
