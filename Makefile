#############################################################################
# Makefile for building: raytracer-42
# Generated by qmake (2.01a) (Qt 4.6.3) on: Tue May 10 11:31:02 2011
# Project:  raytracer-42.pro
# Template: app
# Command: /usr/bin/qmake-qt4 -unix OBJECTS_DIR=./objects LIBS=-lSDL -o Makefile raytracer-42.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fstack-protector --param=ssp-buffer-size=4 -m32 -march=i686 -mtune=atom -fasynchronous-unwind-tables -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fstack-protector --param=ssp-buffer-size=4 -m32 -march=i686 -mtune=atom -fasynchronous-unwind-tables -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/lib/qt4/mkspecs/linux-g++ -I. -I/usr/include/QtCore -I/usr/include/QtGui -I/usr/include -I. -Isrc -Isrc/gui -I.
LINK          = g++
LFLAGS        = -Wl,-O1
LIBS          = $(SUBLIBS)   -lSDL -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt4
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = 
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = objects/

####### Files

SOURCES       = src/BoundingBox.cpp \
		src/Camera.cpp \
		src/CheckerBoard.cpp \
		src/CinemaCamera.cpp \
		src/Color.cpp \
		src/Cone.cpp \
		src/CubeMap.cpp \
		src/CubeTroue.cpp \
		src/Cylinder.cpp \
		src/DirectLight.cpp \
		src/EquationSolver.cpp \
		src/Light.cpp \
		src/main.cpp \
		src/Material.cpp \
		src/Matrix.cpp \
		src/Object.cpp \
		src/ObjectPrimitive.cpp \
		src/ParallelLight.cpp \
		src/Parallelogram.cpp \
		src/ParallelogramLight.cpp \
		src/PerlinNoise.cpp \
		src/Plane.cpp \
		src/Ray.cpp \
		src/Raytracer.cpp \
		src/RaytracerThread.cpp \
		src/RenderingConfiguration.cpp \
		src/RenderingInterface.cpp \
		src/Scene.cpp \
		src/Sphere.cpp \
		src/SphericalLight.cpp \
		src/Spot.cpp \
		src/Texture.cpp \
		src/Torus.cpp \
		src/Triangle.cpp \
		src/Vector.cpp \
		src/gui/gui.cpp \
		src/gui/guiAliasing.cpp \
		src/gui/guiAmbiantOcclusion.cpp \
		src/gui/guiDiffuseLight.cpp \
		src/gui/guiDiffuseShading.cpp \
		src/gui/guiDirectLight.cpp \
		src/gui/guiExposure.cpp \
		src/gui/guiFlou.cpp \
		src/gui/guiInit.cpp \
		src/gui/guiLumiereDiffuse.cpp \
		src/gui/guiMenuBar.cpp \
		src/gui/guiPhotonMapping.cpp \
		src/gui/guiPutpixel.cpp \
		src/gui/guiReflection.cpp \
		src/gui/guiRendering.cpp \
		src/gui/guiSamplingMethod.cpp \
		src/gui/guiSpecularLight.cpp \
		src/gui/guiTransparence.cpp moc_gui.cpp
OBJECTS       = objects/BoundingBox.o \
		objects/Camera.o \
		objects/CheckerBoard.o \
		objects/CinemaCamera.o \
		objects/Color.o \
		objects/Cone.o \
		objects/CubeMap.o \
		objects/CubeTroue.o \
		objects/Cylinder.o \
		objects/DirectLight.o \
		objects/EquationSolver.o \
		objects/Light.o \
		objects/main.o \
		objects/Material.o \
		objects/Matrix.o \
		objects/Object.o \
		objects/ObjectPrimitive.o \
		objects/ParallelLight.o \
		objects/Parallelogram.o \
		objects/ParallelogramLight.o \
		objects/PerlinNoise.o \
		objects/Plane.o \
		objects/Ray.o \
		objects/Raytracer.o \
		objects/RaytracerThread.o \
		objects/RenderingConfiguration.o \
		objects/RenderingInterface.o \
		objects/Scene.o \
		objects/Sphere.o \
		objects/SphericalLight.o \
		objects/Spot.o \
		objects/Texture.o \
		objects/Torus.o \
		objects/Triangle.o \
		objects/Vector.o \
		objects/gui.o \
		objects/guiAliasing.o \
		objects/guiAmbiantOcclusion.o \
		objects/guiDiffuseLight.o \
		objects/guiDiffuseShading.o \
		objects/guiDirectLight.o \
		objects/guiExposure.o \
		objects/guiFlou.o \
		objects/guiInit.o \
		objects/guiLumiereDiffuse.o \
		objects/guiMenuBar.o \
		objects/guiPhotonMapping.o \
		objects/guiPutpixel.o \
		objects/guiReflection.o \
		objects/guiRendering.o \
		objects/guiSamplingMethod.o \
		objects/guiSpecularLight.o \
		objects/guiTransparence.o \
		objects/moc_gui.o
DIST          = /usr/lib/qt4/mkspecs/common/g++-multilib.conf \
		/usr/lib/qt4/mkspecs/common/unix.conf \
		/usr/lib/qt4/mkspecs/common/linux.conf \
		/usr/lib/qt4/mkspecs/qconfig.pri \
		/usr/lib/qt4/mkspecs/features/qt_functions.prf \
		/usr/lib/qt4/mkspecs/features/qt_config.prf \
		/usr/lib/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/lib/qt4/mkspecs/features/default_pre.prf \
		/usr/lib/qt4/mkspecs/features/release.prf \
		/usr/lib/qt4/mkspecs/features/default_post.prf \
		/usr/lib/qt4/mkspecs/features/warn_on.prf \
		/usr/lib/qt4/mkspecs/features/qt.prf \
		/usr/lib/qt4/mkspecs/features/unix/thread.prf \
		/usr/lib/qt4/mkspecs/features/moc.prf \
		/usr/lib/qt4/mkspecs/features/resources.prf \
		/usr/lib/qt4/mkspecs/features/uic.prf \
		/usr/lib/qt4/mkspecs/features/yacc.prf \
		/usr/lib/qt4/mkspecs/features/lex.prf \
		/usr/lib/qt4/mkspecs/features/include_source_dir.prf \
		raytracer-42.pro
QMAKE_TARGET  = raytracer-42
DESTDIR       = 
TARGET        = raytracer-42

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: raytracer-42.pro  /usr/lib/qt4/mkspecs/linux-g++/qmake.conf /usr/lib/qt4/mkspecs/common/g++-multilib.conf \
		/usr/lib/qt4/mkspecs/common/unix.conf \
		/usr/lib/qt4/mkspecs/common/linux.conf \
		/usr/lib/qt4/mkspecs/qconfig.pri \
		/usr/lib/qt4/mkspecs/features/qt_functions.prf \
		/usr/lib/qt4/mkspecs/features/qt_config.prf \
		/usr/lib/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/lib/qt4/mkspecs/features/default_pre.prf \
		/usr/lib/qt4/mkspecs/features/release.prf \
		/usr/lib/qt4/mkspecs/features/default_post.prf \
		/usr/lib/qt4/mkspecs/features/warn_on.prf \
		/usr/lib/qt4/mkspecs/features/qt.prf \
		/usr/lib/qt4/mkspecs/features/unix/thread.prf \
		/usr/lib/qt4/mkspecs/features/moc.prf \
		/usr/lib/qt4/mkspecs/features/resources.prf \
		/usr/lib/qt4/mkspecs/features/uic.prf \
		/usr/lib/qt4/mkspecs/features/yacc.prf \
		/usr/lib/qt4/mkspecs/features/lex.prf \
		/usr/lib/qt4/mkspecs/features/include_source_dir.prf
	$(QMAKE) -unix OBJECTS_DIR=./objects LIBS=-lSDL -o Makefile raytracer-42.pro
/usr/lib/qt4/mkspecs/common/g++-multilib.conf:
/usr/lib/qt4/mkspecs/common/unix.conf:
/usr/lib/qt4/mkspecs/common/linux.conf:
/usr/lib/qt4/mkspecs/qconfig.pri:
/usr/lib/qt4/mkspecs/features/qt_functions.prf:
/usr/lib/qt4/mkspecs/features/qt_config.prf:
/usr/lib/qt4/mkspecs/features/exclusive_builds.prf:
/usr/lib/qt4/mkspecs/features/default_pre.prf:
/usr/lib/qt4/mkspecs/features/release.prf:
/usr/lib/qt4/mkspecs/features/default_post.prf:
/usr/lib/qt4/mkspecs/features/warn_on.prf:
/usr/lib/qt4/mkspecs/features/qt.prf:
/usr/lib/qt4/mkspecs/features/unix/thread.prf:
/usr/lib/qt4/mkspecs/features/moc.prf:
/usr/lib/qt4/mkspecs/features/resources.prf:
/usr/lib/qt4/mkspecs/features/uic.prf:
/usr/lib/qt4/mkspecs/features/yacc.prf:
/usr/lib/qt4/mkspecs/features/lex.prf:
/usr/lib/qt4/mkspecs/features/include_source_dir.prf:
qmake:  FORCE
	@$(QMAKE) -unix OBJECTS_DIR=./objects LIBS=-lSDL -o Makefile raytracer-42.pro

dist: 
	@$(CHK_DIR_EXISTS) objects/raytracer-421.0.0 || $(MKDIR) objects/raytracer-421.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) objects/raytracer-421.0.0/ && $(COPY_FILE) --parents src/BoundingBox.hpp src/Camera.hpp src/CheckerBoard.hpp src/CinemaCamera.hpp src/Color.hpp src/Cone.hpp src/CubeMap.hpp src/CubeTroue.hpp src/Cylinder.hpp src/DirectLight.hpp src/EquationSolver.hpp src/Light.hpp src/Material.hpp src/Matrix.hpp src/Object.hpp src/ObjectPrimitive.hpp src/ParallelLight.hpp src/Parallelogram.hpp src/ParallelogramLight.hpp src/PerlinNoise.hpp src/Plane.hpp src/Point.hpp src/Ray.hpp src/Raytracer.hpp src/RaytracerThread.hpp src/RenderingConfiguration.hpp src/RenderingInterface.hpp src/Rotation.hpp src/Scene.hpp src/Sphere.hpp src/SphericalLight.hpp src/Spot.hpp src/Texture.hpp src/Torus.hpp src/Triangle.hpp src/Vector.hpp src/gui/gui.hpp objects/raytracer-421.0.0/ && $(COPY_FILE) --parents src/BoundingBox.cpp src/Camera.cpp src/CheckerBoard.cpp src/CinemaCamera.cpp src/Color.cpp src/Cone.cpp src/CubeMap.cpp src/CubeTroue.cpp src/Cylinder.cpp src/DirectLight.cpp src/EquationSolver.cpp src/Light.cpp src/main.cpp src/Material.cpp src/Matrix.cpp src/Object.cpp src/ObjectPrimitive.cpp src/ParallelLight.cpp src/Parallelogram.cpp src/ParallelogramLight.cpp src/PerlinNoise.cpp src/Plane.cpp src/Ray.cpp src/Raytracer.cpp src/RaytracerThread.cpp src/RenderingConfiguration.cpp src/RenderingInterface.cpp src/Scene.cpp src/Sphere.cpp src/SphericalLight.cpp src/Spot.cpp src/Texture.cpp src/Torus.cpp src/Triangle.cpp src/Vector.cpp src/gui/gui.cpp src/gui/guiAliasing.cpp src/gui/guiAmbiantOcclusion.cpp src/gui/guiDiffuseLight.cpp src/gui/guiDiffuseShading.cpp src/gui/guiDirectLight.cpp src/gui/guiExposure.cpp src/gui/guiFlou.cpp src/gui/guiInit.cpp src/gui/guiLumiereDiffuse.cpp src/gui/guiMenuBar.cpp src/gui/guiPhotonMapping.cpp src/gui/guiPutpixel.cpp src/gui/guiReflection.cpp src/gui/guiRendering.cpp src/gui/guiSamplingMethod.cpp src/gui/guiSpecularLight.cpp src/gui/guiTransparence.cpp objects/raytracer-421.0.0/ && (cd `dirname objects/raytracer-421.0.0` && $(TAR) raytracer-421.0.0.tar raytracer-421.0.0 && $(COMPRESS) raytracer-421.0.0.tar) && $(MOVE) `dirname objects/raytracer-421.0.0`/raytracer-421.0.0.tar.gz . && $(DEL_FILE) -r objects/raytracer-421.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_gui.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_gui.cpp
moc_gui.cpp: src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp \
		src/gui/gui.hpp
	/usr/lib/qt4/bin/moc $(DEFINES) $(INCPATH) src/gui/gui.hpp -o moc_gui.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

####### Compile

objects/BoundingBox.o: src/BoundingBox.cpp src/BoundingBox.hpp \
		src/Vector.hpp \
		src/Point.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/BoundingBox.o src/BoundingBox.cpp

objects/Camera.o: src/Camera.cpp src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Color.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Camera.o src/Camera.cpp

objects/CheckerBoard.o: src/CheckerBoard.cpp src/CheckerBoard.hpp \
		src/Texture.hpp \
		src/Color.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/CheckerBoard.o src/CheckerBoard.cpp

objects/CinemaCamera.o: src/CinemaCamera.cpp src/CinemaCamera.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Color.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/CinemaCamera.o src/CinemaCamera.cpp

objects/Color.o: src/Color.cpp src/Color.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Color.o src/Color.cpp

objects/Cone.o: src/Cone.cpp src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp \
		src/Cone.hpp \
		src/EquationSolver.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Cone.o src/Cone.cpp

objects/CubeMap.o: src/CubeMap.cpp src/CubeMap.hpp \
		src/Color.hpp \
		src/Point.hpp \
		src/Vector.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/CubeMap.o src/CubeMap.cpp

objects/CubeTroue.o: src/CubeTroue.cpp src/CubeTroue.hpp \
		src/ObjectPrimitive.hpp \
		src/Vector.hpp \
		src/Point.hpp \
		src/Rotation.hpp \
		src/BoundingBox.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/EquationSolver.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Object.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/CubeTroue.o src/CubeTroue.cpp

objects/Cylinder.o: src/Cylinder.cpp src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp \
		src/Cylinder.hpp \
		src/EquationSolver.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Cylinder.o src/Cylinder.cpp

objects/DirectLight.o: src/DirectLight.cpp src/DirectLight.hpp \
		src/Light.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Color.hpp \
		src/Ray.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/Object.hpp \
		src/Rotation.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/DirectLight.o src/DirectLight.cpp

objects/EquationSolver.o: src/EquationSolver.cpp src/EquationSolver.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/EquationSolver.o src/EquationSolver.cpp

objects/Light.o: src/Light.cpp src/Light.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Color.hpp \
		src/Ray.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/Object.hpp \
		src/Rotation.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Light.o src/Light.cpp

objects/main.o: src/main.cpp src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp \
		src/CinemaCamera.hpp \
		src/Sphere.hpp \
		src/Parallelogram.hpp \
		src/Spot.hpp \
		src/ParallelogramLight.hpp \
		src/SphericalLight.hpp \
		src/ParallelLight.hpp \
		src/Plane.hpp \
		src/PerlinNoise.hpp \
		src/CheckerBoard.hpp \
		src/Cone.hpp \
		src/Cylinder.hpp \
		src/Torus.hpp \
		src/CubeTroue.hpp \
		src/gui/gui.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/main.o src/main.cpp

objects/Material.o: src/Material.cpp src/Material.hpp \
		src/Texture.hpp \
		src/Color.hpp \
		src/Vector.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Material.o src/Material.cpp

objects/Matrix.o: src/Matrix.cpp src/Matrix.hpp \
		src/Vector.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Matrix.o src/Matrix.cpp

objects/Object.o: src/Object.cpp src/Object.hpp \
		src/Vector.hpp \
		src/Point.hpp \
		src/Rotation.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Material.hpp \
		src/Texture.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Object.o src/Object.cpp

objects/ObjectPrimitive.o: src/ObjectPrimitive.cpp src/ObjectPrimitive.hpp \
		src/Vector.hpp \
		src/Point.hpp \
		src/Rotation.hpp \
		src/BoundingBox.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Material.hpp \
		src/Texture.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/ObjectPrimitive.o src/ObjectPrimitive.cpp

objects/ParallelLight.o: src/ParallelLight.cpp src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp \
		src/ParallelLight.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/ParallelLight.o src/ParallelLight.cpp

objects/Parallelogram.o: src/Parallelogram.cpp src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp \
		src/Parallelogram.hpp \
		src/EquationSolver.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Parallelogram.o src/Parallelogram.cpp

objects/ParallelogramLight.o: src/ParallelogramLight.cpp src/ParallelogramLight.hpp \
		src/Light.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Color.hpp \
		src/Ray.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/Object.hpp \
		src/Rotation.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp \
		src/Parallelogram.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/ParallelogramLight.o src/ParallelogramLight.cpp

objects/PerlinNoise.o: src/PerlinNoise.cpp src/PerlinNoise.hpp \
		src/Texture.hpp \
		src/Color.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/PerlinNoise.o src/PerlinNoise.cpp

objects/Plane.o: src/Plane.cpp src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp \
		src/Plane.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Plane.o src/Plane.cpp

objects/Ray.o: src/Ray.cpp src/Ray.hpp \
		src/Color.hpp \
		src/Point.hpp \
		src/Vector.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Ray.o src/Ray.cpp

objects/Raytracer.o: src/Raytracer.cpp src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Raytracer.o src/Raytracer.cpp

objects/RaytracerThread.o: src/RaytracerThread.cpp src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/RaytracerThread.o src/RaytracerThread.cpp

objects/RenderingConfiguration.o: src/RenderingConfiguration.cpp src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/Color.hpp \
		src/Point.hpp \
		src/Vector.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/RenderingConfiguration.o src/RenderingConfiguration.cpp

objects/RenderingInterface.o: src/RenderingInterface.cpp src/RenderingInterface.hpp \
		src/Color.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/RenderingInterface.o src/RenderingInterface.cpp

objects/Scene.o: src/Scene.cpp src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Scene.o src/Scene.cpp

objects/Sphere.o: src/Sphere.cpp src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp \
		src/Sphere.hpp \
		src/EquationSolver.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Sphere.o src/Sphere.cpp

objects/SphericalLight.o: src/SphericalLight.cpp src/SphericalLight.hpp \
		src/Light.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Color.hpp \
		src/Ray.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/Object.hpp \
		src/Rotation.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp \
		src/Sphere.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/SphericalLight.o src/SphericalLight.cpp

objects/Spot.o: src/Spot.cpp src/Spot.hpp \
		src/Light.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Color.hpp \
		src/Ray.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/Object.hpp \
		src/Rotation.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Spot.o src/Spot.cpp

objects/Texture.o: src/Texture.cpp src/Texture.hpp \
		src/Color.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Texture.o src/Texture.cpp

objects/Torus.o: src/Torus.cpp src/Torus.hpp \
		src/ObjectPrimitive.hpp \
		src/Vector.hpp \
		src/Point.hpp \
		src/Rotation.hpp \
		src/BoundingBox.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/EquationSolver.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Object.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Torus.o src/Torus.cpp

objects/Triangle.o: src/Triangle.cpp src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Color.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp \
		src/Triangle.hpp \
		src/EquationSolver.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Triangle.o src/Triangle.cpp

objects/Vector.o: src/Vector.cpp src/Vector.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Vector.o src/Vector.cpp

objects/gui.o: src/gui/gui.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp \
		src/CinemaCamera.hpp \
		src/Sphere.hpp \
		src/Spot.hpp \
		src/Plane.hpp \
		src/Triangle.hpp \
		src/Parallelogram.hpp \
		src/Torus.hpp \
		src/CubeTroue.hpp \
		src/PerlinNoise.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/gui.o src/gui/gui.cpp

objects/guiAliasing.o: src/gui/guiAliasing.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiAliasing.o src/gui/guiAliasing.cpp

objects/guiAmbiantOcclusion.o: src/gui/guiAmbiantOcclusion.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiAmbiantOcclusion.o src/gui/guiAmbiantOcclusion.cpp

objects/guiDiffuseLight.o: src/gui/guiDiffuseLight.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiDiffuseLight.o src/gui/guiDiffuseLight.cpp

objects/guiDiffuseShading.o: src/gui/guiDiffuseShading.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiDiffuseShading.o src/gui/guiDiffuseShading.cpp

objects/guiDirectLight.o: src/gui/guiDirectLight.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiDirectLight.o src/gui/guiDirectLight.cpp

objects/guiExposure.o: src/gui/guiExposure.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiExposure.o src/gui/guiExposure.cpp

objects/guiFlou.o: src/gui/guiFlou.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiFlou.o src/gui/guiFlou.cpp

objects/guiInit.o: src/gui/guiInit.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiInit.o src/gui/guiInit.cpp

objects/guiLumiereDiffuse.o: src/gui/guiLumiereDiffuse.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiLumiereDiffuse.o src/gui/guiLumiereDiffuse.cpp

objects/guiMenuBar.o: src/gui/guiMenuBar.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiMenuBar.o src/gui/guiMenuBar.cpp

objects/guiPhotonMapping.o: src/gui/guiPhotonMapping.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiPhotonMapping.o src/gui/guiPhotonMapping.cpp

objects/guiPutpixel.o: src/gui/guiPutpixel.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiPutpixel.o src/gui/guiPutpixel.cpp

objects/guiReflection.o: src/gui/guiReflection.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiReflection.o src/gui/guiReflection.cpp

objects/guiRendering.o: src/gui/guiRendering.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiRendering.o src/gui/guiRendering.cpp

objects/guiSamplingMethod.o: src/gui/guiSamplingMethod.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiSamplingMethod.o src/gui/guiSamplingMethod.cpp

objects/guiSpecularLight.o: src/gui/guiSpecularLight.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiSpecularLight.o src/gui/guiSpecularLight.cpp

objects/guiTransparence.o: src/gui/guiTransparence.cpp src/gui/gui.hpp \
		src/RenderingInterface.hpp \
		src/Color.hpp \
		src/Raytracer.hpp \
		src/Scene.hpp \
		src/Camera.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Rotation.hpp \
		src/Ray.hpp \
		src/Object.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp \
		src/Light.hpp \
		src/RenderingConfiguration.hpp \
		src/CubeMap.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/guiTransparence.o src/gui/guiTransparence.cpp

objects/moc_gui.o: moc_gui.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/moc_gui.o moc_gui.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

re:	clean all
