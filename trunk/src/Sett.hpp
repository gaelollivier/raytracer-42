//
// Cube.hpp for raytracer in /home/olivie_a//rendu/cpp/raytracer-42/src
//
// Made by samuel olivier
// Login   <olivie_a@epitech.net>
//
// Started on  Tue May 10 13:39:45 2011 samuel olivier
// Last update Mon May 16 14:02:28 2011 melvin laplanche
//

#ifndef _SETT_HPP_
#define _SETT_HPP_

#include "Object.hpp"

class Sett : public Object
{
public:
  Sett(void);
  Sett(const Rotation& rotation, const Point& position, bool isSolid,
       const Vector& width, const Vector& height, const Vector& depth,
       const Material& material);
};

#endif
