//
// guiReflection.cpp for  in /home/laviss_f//raytracer-42/gui
// 
// Made by franck lavisse
// Login   <laviss_f@epitech.net>
// 
// Started on  Fri Apr 29 17:39:55 2011 franck lavisse
// Last update Sat Apr 30 19:25:00 2011 franck lavisse
//
#include <QLabel>
#include <QGroupBox>
#include <QSpinBox>
#include <QVBoxLayout>
#include <QGridLayout>
#include "gui.hpp"

bool	Gui::getReflectionBool(void) const
{
  return (_reflectionEnabled->checkState());
}

int	Gui::getReflectionSampling(void) const
{
  return (_reflectionSampling->value());
}

int	Gui::getReflectionProfondeur(void) const
{
  return (_reflectionProfondeur->value());
}

void		Gui::reflection(void)
{  
  QLabel	*lprofondeur = new QLabel("Profondeur");
  QLabel	*lsampling = new QLabel("Sampling");
  QGroupBox	*gbox = new QGroupBox("Reflection");
  _reflectionProfondeur = new QSpinBox();
  _reflectionSampling = new QSpinBox();
  QVBoxLayout	*vbox = new QVBoxLayout();
  QGridLayout	*gprofondeur = new QGridLayout();
  QGridLayout	*gsampling = new QGridLayout();
  _reflectionEnabled = new QCheckBox("Reflection");
  
  gprofondeur->addWidget(_reflectionEnabled,0,0);
  gprofondeur->addWidget(lprofondeur,1,0);
  gprofondeur->addWidget(_reflectionProfondeur,1,1);  
  gsampling->addWidget(lsampling,1,0);
  gsampling->addWidget(_reflectionSampling,1,1);
  vbox->addLayout(gprofondeur);
  vbox->addLayout(gsampling);
  gbox->setLayout(vbox);
  _Grid->addWidget(gbox,100,0);
  _widget->setLayout(_Grid);
  _Dock->setWidget(_widget);
}