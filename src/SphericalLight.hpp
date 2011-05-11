//
// SphericalLight.hpp for raytracer in /home/jochau_g//Desktop/raytracer-42/src
// 
// Made by gael jochaud-du-plessix
// Login   <jochau_g@epitech.net>
// 
// Started on  Sun May  8 22:43:24 2011 gael jochaud-du-plessix
// Last update Mon May  9 01:32:57 2011 gael jochaud-du-plessix
//

#ifndef _SPHERICAL_LIGHT_HPP_
#define _SPHERICAL_LIGHT_HPP_

#include "Light.hpp"

class	SphericalLight : public Light
{
public :
  SphericalLight(const Point &position1,
		 double size,
		 const Color& color,
		 double intensity=1);

  void		setDirectLightPow(double value);
  double	getDirectLightPow(void) const;
  
  void getLighting(const ObjectPrimitive& primitive,
		   const Point& intersectPoint,
		   const Raytracer &raytracer,
		   const Vector& ray,
		   Color& directLighting,
		   Color& specularLighting) const;

  Color getDirectLighting(const Raytracer& raytracer,
			  Ray& ray) const;

private:
  double	_directLightPow;
  double	_size;
};

#endif