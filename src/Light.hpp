//
// Camera.hpp for raytracer in /home/jochau_g//data/dev/c/raytracer/raytracer-42
// 
// Made by gael jochaud-du-plessix
// Login   <jochau_g@epitech.net>
// 
// Started on  Tue Apr 26 18:54:28 2011 gael jochaud-du-plessix
// Last update Fri Apr 29 11:05:27 2011 samuel olivier
//

#ifndef _LIGHT_HPP_
#define _LIGHT_HPP_

#include "Point.hpp"
#include "Color.hpp"
#include "Ray.hpp"
#include "RenderingConfiguration.hpp"

class Light
{
public:
  Light();
  ~Light();

  Point&	getPosition() const;
  Color&	getColor() const;
  double	getIntensity() const;

  void		setPosition(const Point& position);
  void		setColor(const Color& color);
  void		setIntensity(double intensity);

  virtual void
  getLighting(const Ray& ray,
	      const Point& intersectPoint,
	      const RenderingConfiguration& config,
	      Color& directLighting,
	      Color& specularLighting) const = 0;

private:
  Point		_position;
  Color		_color;
  double	_intensity;
};

#endif
