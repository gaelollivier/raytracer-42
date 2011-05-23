//
// Triangle.cpp for raytracer in /home/michar_l//Raytracer/raytracer-42
//
// Made by loick michard
// Login   <michar_l@epitech.net>
//
// Started on  Fri Apr 29 10:41:20 2011 loick michard
// Last update Sat May 21 16:38:44 2011 loick michard
//

#include <cmath>
#include <vector>
#include "Raytracer.hpp"
#include "Triangle.hpp"
#include "EquationSolver.hpp"

Triangle::Triangle(Object*object,
		   const Point& absolutePosition,
		   const Rotation& rotation,
		   const Material& material,
		   const Point& vertex1,
		   const Point& vertex2) : ObjectPrimitive(object,
							   absolutePosition,
							   rotation, material),
					   _vertex1(vertex1), _vertex2(vertex2)
{
  setCachedValues();
  _isLimited = true;
}

Triangle::Triangle(void):
  ObjectPrimitive(NULL, Point(0, 0, 0), Rotation(0, 0, 0), Material()),
  _vertex1(Point(0, 0, 0)), _vertex2(Point(0, 0, 0))  
{
  _isLimited = true;
}

void		Triangle::setCachedValues(void)
{
  _v1 = _vertex1 - _absolutePosition;
  _v2 = _vertex2 - _absolutePosition;
  _var1 = -_v1._z * _v2._x;
  _var2 = _v1._y * _v2._x;
  _var3 = _v1._z * _v2._y;
  _var4 = _v1._x * _v2._z;
  _var5 = _v1._x * _v2._y;
  _var6 = _v1._y * _v2._z;
  _var7 = _v2._x * _absolutePosition._z;
  _var8 = _absolutePosition._x * _v2._z;
  _var9 = _v2._y * _absolutePosition._z;
  _var10 = _v2._x * _absolutePosition._y;
  _var11 = _absolutePosition._y * _v2._z;
  _var12 = _absolutePosition._x * _v2._y;
  _var13 = _v1._z * _absolutePosition._y;
  _var14 = _v1._y * _absolutePosition._z;
  _var15 = _v1._x * _absolutePosition._y;
  _var16 = _v1._z * _absolutePosition._x;
  _var17 = _v1._x * _absolutePosition._z;
  _var18 = _v1._y * _absolutePosition._x;
  _var19 = _v1._z * _v2._y;
  _var20 = _v1._y * _v2._z;
  _var21 = _absolutePosition._x * _v1._z * _v2._y -
    _absolutePosition._x * _v1._y * _v2._z - _v1._x * _v2._y *
    _absolutePosition._z;
  _var22 = _v1._x * _v2._y;
  _var23 = _v1._x * _v2._z;
  _var24 = _v1._x * _absolutePosition._y * _v2._z - _v2._x * _v1._z *
    _absolutePosition._y;
  _var25 = _v2._x * _v1._y;
  _var26 = _v2._x * _v1._z;
  _var27 = _v2._x * _v1._y * _absolutePosition._z;
  _normal = Vector(_v1._y * _v2._z + _v2._y * - _v1._z,
		   _v1._z * _v2._x + _v2._z * - _v1._x,
		   _v1._x * _v2._y + _v2._x * - _v1._y);
  _normal.normalize();
}

void		Triangle::setVertex1(const Point& vertex1)
{
  _vertex1 = vertex1;
}

void		Triangle::setVertex2(const Point& vertex2)
{
  _vertex2 = vertex2;
}

void		Triangle::getMappedCoords(const Point& intersectPoint,
					  double& x, double &y) const
{
  x = 0;
  y = 0;
  return ;
  (void)intersectPoint;
}

void
Triangle::addIntersectionWithRay(const Ray& ray,
				 vector<struct s_intersected_object>&
				 intersection) const
{
  double	D = _var1 * ray._vector._y + _var2 * ray._vector._z
    + ray._vector._x * _var3 + ray._vector._y * _var4
    - ray._vector._z * _var5 - ray._vector._x * _var6;
  double	u = -(-ray._vector._y * _var7 -
		      ray._vector._y * ray._point._x * _v2._z
		      + ray._vector._y * _v2._x * ray._point._z
		      + ray._vector._y * _var8 + ray._vector._x * _var9
		      - ray._vector._x * _v2._y * ray._point._z
		      + ray._vector._z * _var10 - _v2._x * ray._vector._z *
		      ray._point._y + ray._point._x * ray._vector._z * _v2._y +
		      ray._vector._x * ray._point._y * _v2._z
		      - ray._vector._x * _var11 - _var12 * ray._vector._z) / D;
  double	v = (-ray._vector._x * _var13 - ray._vector._x * _v1._y *
		     ray._point._z + ray._vector._x * _v1._z * ray._point._y
		     + ray._vector._x * _var14 + ray._vector._z * _var15 +
		     _v1._y * ray._vector._z * ray._point._x + ray._vector._y
		     * _var16 - ray._vector._z * _v1._x * ray._point._y
		     - ray._vector._y * _var17 - ray._vector._z * _var18
		     + ray._vector._y * _v1._x * ray._point._z - _v1._z *
		     ray._vector._y * ray._point._x) / D;
  double	t = (-ray._point._x * _var19 + ray._point._x * _var20
		     + _var21 + _var22 * ray._point._z - ray._point._y
		     * _var23 + _var24 - _var25 * ray._point._z + _var26
		     * ray._point._y + _var27) / D;

  if (u < 0 || t <= EPSILON || v < 0 || u + v > 1 || D == 0)
    return ;
  vector<double>       k;
  k.push_back(t);
  intersection.push_back((t_intersected_object){this, k});
}

void                  Triangle::intersectWithRay(const Ray& ray,
						 ObjectPrimitive*& primitive,
						 double &res) const
{
  double	D = _var1 * ray._vector._y + _var2 * ray._vector._z
    + ray._vector._x * _var3 + ray._vector._y * _var4
    - ray._vector._z * _var5 - ray._vector._x * _var6;
  double	u = -(-ray._vector._y * _var7 -
		      ray._vector._y * ray._point._x * _v2._z
		      + ray._vector._y * _v2._x * ray._point._z
		      + ray._vector._y * _var8 + ray._vector._x * _var9
		      - ray._vector._x * _v2._y * ray._point._z
		      + ray._vector._z * _var10 - _v2._x * ray._vector._z *
		      ray._point._y + ray._point._x * ray._vector._z * _v2._y +
		      ray._vector._x * ray._point._y * _v2._z
		      - ray._vector._x * _var11 - _var12 * ray._vector._z) / D;
  double	v = (-ray._vector._x * _var13 - ray._vector._x * _v1._y *
		     ray._point._z + ray._vector._x * _v1._z * ray._point._y
		     + ray._vector._x * _var14 + ray._vector._z * _var15 +
		     _v1._y * ray._vector._z * ray._point._x + ray._vector._y
		     * _var16 - ray._vector._z * _v1._x * ray._point._y
		     - ray._vector._y * _var17 - ray._vector._z * _var18
		     + ray._vector._y * _v1._x * ray._point._z - _v1._z *
		     ray._vector._y * ray._point._x) / D;
  double	t = (-ray._point._x * _var19 + ray._point._x * _var20
		     + _var21 + _var22 * ray._point._z - ray._point._y
		     * _var23 + _var24 - _var25 * ray._point._z + _var26
		     * ray._point._y + _var27) / D;

  if (u < 0 || t <= EPSILON || v < 0 || u + v > 1 || D == 0)
    return ;
  if (t < res || res < 0)
    {
      res = t;
      primitive = (ObjectPrimitive*)this;
    }
}

Vector		Triangle::getNormalVector(const Point& intersectPoint,
					const Vector& viewVector) const
{
  double	cosA = viewVector * _normal;

  cosA = cosA / (viewVector.getNorm());
  if (cosA <= 0)
    return (_normal * -1);
  return (_normal);
  (void)intersectPoint;
}
#define MAX(x, y) ((x) > (y)) ? (x) : (y)
#define MIN(x, y) ((x) < (y)) ? (x) : (y)
bool		Triangle::isInBoundingBox(BoundingBox& box) const
{
  //  std::cout<<"Triangle:"<<_absolutePosition._x<<" "<<_absolutePosition._y<<" "<<_absolutePosition._z<<std::endl;
  Point		maxBox = box.getMaxPoint();
  Point		minBox = box.getMinPoint();
  double	maxX = MAX(MAX(_vertex1._x, _vertex2._x),
			   _absolutePosition._x);
  double        maxY = MAX(MAX(_vertex1._y, _vertex2._y),
                           _absolutePosition._y);
  double        maxZ = MAX(MAX(_vertex1._z, _vertex2._z),
                           _absolutePosition._z);
  double        minX = MIN(MIN(_vertex1._x, _vertex2._x),
                           _absolutePosition._x);
  double        minY = MIN(MIN(_vertex1._y, _vertex2._y),
                           _absolutePosition._y);
  double        minZ = MIN(MIN(_vertex1._z, _vertex2._z),
                           _absolutePosition._z);
  if ((maxX > maxBox._x && minX > maxBox._x) ||
      (maxX < minBox._x && minX < minBox._x) ||
      (maxY > maxBox._y && minY > maxBox._y) ||
      (maxY < minBox._y && minY < minBox._y) ||
      (maxZ > maxBox._z && minZ > maxBox._z) ||
      (maxZ < minBox._z && minZ < minBox._z))
    return (false);
  return (true);
}

Point		Triangle::getMax(void) const
{
  return (Point(MAX(MAX(_vertex1._x, _vertex2._x),
		    _absolutePosition._x),
		MAX(MAX(_vertex1._y, _vertex2._y),
		    _absolutePosition._y),
		MAX(MAX(_vertex1._z, _vertex2._z),
		    _absolutePosition._z)));
}

Point           Triangle::getMin(void) const
{
  return (Point(MIN(MIN(_vertex1._x, _vertex2._x),
                    _absolutePosition._x),
                MIN(MIN(_vertex1._y, _vertex2._y),
                    _absolutePosition._y),
                MIN(MIN(_vertex1._z, _vertex2._z),
                    _absolutePosition._z)));
}
