//
// gui_putpixel.cpp for  in /home/laviss_f//raytracer-42/gui
// 
// Made by franck lavisse
// Login   <laviss_f@epitech.net>
// 
// Started on  Fri Apr 29 15:39:43 2011 franck lavisse
// Last update Fri May  6 17:15:24 2011 franck lavisse
//
#include <iostream>
#include "gui.hpp"
#include "../Color.hpp"

using namespace std;

void	Gui::putPixel(const Color& color, int x, int y)
{
  QPainter	paint(_pixmap);
  QColor	mcolor(color._r, color._g, color._b, 255);
  QPen		pen(mcolor);

  paint.setPen(pen);
  paint.drawLine(x,y,x,y);
}
