//
// Raytracer.hpp for raytracer in /home/michar_l//Raytracer
// 
// Made by loick michard
// Login   <michar_l@epitech.net>
// 
// Started on  Tue Apr 26 12:24:26 2011 loick michard
// Last update Mon May  9 22:35:47 2011 samuel olivier
//

#ifndef _RAYTRACER_HPP_
#define _RAYTRACER_HPP_

#define EPSILON 1e-5

#include <stack>

#include "Scene.hpp"
#include "RenderingConfiguration.hpp"
#include "RenderingInterface.hpp"
#include "RaytracerThread.hpp"

typedef struct			s_intersected_object
{
  const ObjectPrimitive*        primitive;
  vector<double>                k;
}				t_intersected_object;

class	Raytracer
{

public:

  const static int	NO_SCENE_SPECIFIED = 0;
  const static int	NO_CONFIG_SPECIFIED = 1;
  const static int	NO_INTERFACE_SPECIFIED = 2;
  const static double	EPSILON_REFLECTION = 1e-2;
  const static double	EPSILON_REFRACTION = 1e-2;

  Raytracer();
  Raytracer(Scene* scene,
	    RenderingConfiguration* config,
	    RenderingInterface* interface);
  ~Raytracer();

  void setScene(Scene& scene);
  void setRenderingConfiguration(RenderingConfiguration* config);
  void setRenderingInterface(RenderingInterface* interface);

  const Scene*			getScene(void) const;
  const RenderingConfiguration*	getRenderingConfiguration(void) const;
  RenderingInterface*		getRenderingInterface(void) const;

  void launchRendering();
  void stopRendering();
  void pauseRendering();

  Color		throwRay(Ray& ray);
  Color		renderPixel(double x, double y);
  void		renderingLoop(double& progress);
  const Camera&	getCurrentCamera(void);
  Point		getPixelToRender(void) const;

  void	getIntersectingObjects(Ray ray, vector<t_intersected_object>&
			       intersection) const;
  ObjectPrimitive*
  getNearestObject(Ray& ray, double& res) const;

  void	calcLightForObject(const ObjectPrimitive& object,
			   const Point& intersectPoint,
			   const Vector& viewRay,
			   Color& directLight,
			   Color& specularLight) const;

  Color	calcAmbiantOcclusion(const ObjectPrimitive* nearestObject,
			     const Point& intersectPoint,
			     Ray& ray, double& coef);
  Color	calcDiffusedReflection(Ray& ray,
			       const ObjectPrimitive* nearestObject);
  Color	calcReflectedLight(const ObjectPrimitive* nearestObject,
			   const Point& intersectPoint,
			   Ray& ray);
  Color	calcDiffusedTransmission(Ray& ray,
			       const ObjectPrimitive* nearestObject);
  Color	calcTransmetedLight(const ObjectPrimitive* nearestObject,
			    const Point& intersectPoint,
			    Ray& ray);

  Color	calcDirectLight(Ray& ray);

private:
  Scene*			_scene;
  RenderingConfiguration*	_config;
  RenderingInterface*		_interface;
  RaytracerThread*		_thread;
  stack<ObjectPrimitive*>	_refractivePath;
};

#endif
