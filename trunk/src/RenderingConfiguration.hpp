//
// RenderingConfiguration.hpp for raytracer in /home/michar_l//Raytracer
// 
// Made by loick michard
// Login   <michar_l@epitech.net>
// 
// Started on  Tue Apr 26 13:51:17 2011 loick michard
// Last update Fri Apr 29 16:35:28 2011 samuel olivier
//

#ifndef _RENDERINGCONFIGURATION_HPP_
#define _RENDERINGCONFIGURATION_HPP_

enum	renderingSamplingMethod{
  RSM_LINEAR_HORIZONTAL,
  RSM_LINEAR_VERTICAL,
  RSM_UNPIXELISING,
  RSM_RANDOM_HORIZONTAL,
  RSM_RANDOM_VERTICAL,
  RSM_RANDOM_PIXEL
};

typedef struct	s_reflection
{
  bool		enabled;
  int		maxDepth;
  bool		diffused;
  int		diffusedSampling;
}		t_reflection;

typedef struct	s_transparency
{
  bool		enabled;
  bool          diffused;
  int		diffusedSampling;
}               t_transparency;

class RenderingConfiguration
{
public:
  RenderingConfiguration();
  ~RenderingConfiguration();
  
  int		getAntialiasing(void) const;
  void		setAntialiasing(int antialiasing);
  bool		isDirectLighting(void) const;
  void		setDirectLighting(bool antialiasing);

  bool		isReflectionEnabled(void) const;
  int		getReflectionMaxDepth(void) const;
  bool		isReflectionDiffused(void) const;
  int		getReflectionDiffusedSampling(void) const;
  void		setReflection(bool enabled, int maxDepth = 20,
			      bool diffused = 0, int diffusedSampling = 0);
  void		setReflectionEnabled(bool enabled = 1);
  void		setReflectionMaxDepth(int maxDepth);
  void		setReflectionDiffused(bool diffused = 1);
  void		setReflectionDiffusedSampling(int diffusedSampling);

  bool		isTransparencyEnabled(void) const;
  bool		isTransparencyDiffused(void) const;
  int		getTransparencyDiffusedSampling(void) const;
  void		setTransparency(bool enabled,
				bool diffused = 0, int diffusedSampling = 0);
  void		setTransparencyEnabled(bool enabled = 1);
  void          setTransparencyDiffused(bool diffused = 1);
  void          setTransparencyDiffusedSampling(int diffusedSampling);

  bool		isAmbientOcclusionEnabled(void) const;
  int		getAmbientOcclusionSampling(void) const;
  void		setAmbientOcclusionEnabled(bool enabled = 1);
  void		setAmbientOcclusionSampling(int sampling);

  bool		isPhotonMappingEnabled(void) const;
  int		getPhotonMappingSampling(void) const;
  void		setPhotonMappingEnabled(bool enabled= 1);
  void		setPhotonMappingSampling(int sampling);

  bool		isDiffuseLightingEnabled(void) const;
  int		getDiffuseLightingSampling(void) const;
  void		setDiffuseLightingEnabled(bool enabled= 1);
  void		setDiffuseLightingSampling(int sampling);

  bool		isFieldDepthEnabled(void) const;
  int		getFieldDepthSampling(void) const;
  void		setFieldDepthEnabled(bool enabled= 1);
  void		setFieldDepthSampling(int sampling);

  renderingSamplingMethod getRenderingSamplingMethod(void) const;
  void setRenderingSamplingMethod(renderingSamplingMethod rsm);

  int	getWidth(void) const;
  void	setWidth(int width);
  int   getHeight(void) const;
  void	setHeight(int width);

private:
  int			_width;
  int			_height;
  int			_antialiasing;
  bool			_directLighting;
  t_reflection		_reflection;
  t_transparency	_transparency;
  bool			_ambientOcclusionEnabled;
  int			_ambientOcclusionSampling;
  bool                  _photonMappingEnabled;
  int                   _photonMappingSampling;
  bool                  _diffuseLightingEnabled;
  int                   _diffuseLightingSampling;
  bool                  _fieldDepthEnabled;
  int                   _fieldDepthSampling;
  renderingSamplingMethod _renderingSamplingMethod;
};

#endif