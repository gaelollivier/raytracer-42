//
// Camera.hpp for raytracer in /home/jochau_g//data/dev/c/raytracer/raytracer-42
// 
// Made by gael jochaud-du-plessix
// Login   <jochau_g@epitech.net>
// 
// Started on  Tue Apr 26 18:54:28 2011 gael jochaud-du-plessix
// Last update Thu Apr 28 14:08:56 2011 loick michard
//

#ifndef _COLOR_HPP_
#define _COLOR_HPP_

class Color
{
public:
  Color();
  Color(int r, int g, int b, int a);
  Color(int color);
  ~Color();

  int	getR(void) const;
  int	getG(void) const;
  int	getB(void) const;
  int	getA(void) const;

  void	setR(int r);
  void	setG(int g);
  void	setB(int b);
  void	setA(int a);
  void	setColor(int r, int g, int b, int a);
  void	setColor(int color);

  Color&	operator+=(const Color& color);
  Color&	operator-=(const Color& color);
  Color&	operator*=(const Color& color);
  Color&	operator/=(const Color& color);
  Color&	operator%=(const Color& color);
  Color&	operator&=(const Color& color);

private:
  int	_r;
  int	_g;
  int	_b;
  int	_a;
};

Color	operator+(const Color& color1, const Color& color2);
Color	operator-(const Color& color1, const Color& color2);
Color	operator*(const Color& color1, const Color& color2);
Color	operator/(const Color& color1, const Color& color2);
Color	operator%(const Color& color1, const Color& color2);
Color	operator&(const Color& color1, const Color& color2);

#endif
