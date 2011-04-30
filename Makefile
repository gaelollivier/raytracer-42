#############################################################################
# Makefile for building: raytracer-42
# Generated by qmake (2.01a) (Qt 4.6.3) on: Sat Apr 30 16:46:14 2011
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
INCPATH       = -I/usr/lib/qt4/mkspecs/linux-g++ -I. -I/usr/include/QtCore -I/usr/include/QtGui -I/usr/include -I. -Isrc -I.
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
		src/CinemaCamera.cpp \
		src/Color.cpp \
		src/DirectLight.cpp \
		src/EquationSolver.cpp \
		src/Light.cpp \
		src/main.cpp \
		src/Material.cpp \
		src/Matrix.cpp \
		src/Object.cpp \
		src/ObjectPrimitive.cpp \
		src/Plan.cpp \
		src/Ray.cpp \
		src/Raytracer.cpp \
		src/RaytracerThread.cpp \
		src/RenderingConfiguration.cpp \
		src/RenderingInterface.cpp \
		src/Scene.cpp \
		src/Sphere.cpp \
		src/Spot.cpp \
		src/Texture.cpp \
		src/Vector.cpp 
OBJECTS       = objects/BoundingBox.o \
		objects/Camera.o \
		objects/CinemaCamera.o \
		objects/Color.o \
		objects/DirectLight.o \
		objects/EquationSolver.o \
		objects/Light.o \
		objects/main.o \
		objects/Material.o \
		objects/Matrix.o \
		objects/Object.o \
		objects/ObjectPrimitive.o \
		objects/Plan.o \
		objects/Ray.o \
		objects/Raytracer.o \
		objects/RaytracerThread.o \
		objects/RenderingConfiguration.o \
		objects/RenderingInterface.o \
		objects/Scene.o \
		objects/Sphere.o \
		objects/Spot.o \
		objects/Texture.o \
		objects/Vector.o
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
	$(COPY_FILE) --parents $(SOURCES) $(DIST) objects/raytracer-421.0.0/ && $(COPY_FILE) --parents src/BoundingBox.hpp src/Vector.hpp src/Point.hpp src/Camera.hpp src/Rotation.hpp src/Ray.hpp src/Color.hpp src/CinemaCamera.hpp src/DirectLight.hpp src/Light.hpp src/RenderingConfiguration.hpp src/Object.hpp src/ObjectPrimitive.hpp src/Material.hpp src/Texture.hpp src/EquationSolver.hpp src/Raytracer.hpp src/Scene.hpp src/RenderingInterface.hpp src/RaytracerThread.hpp src/Sphere.hpp src/Spot.hpp src/Plan.hpp src/Matrix.hpp objects/raytracer-421.0.0/ && $(COPY_FILE) --parents src/BoundingBox.cpp src/Camera.cpp src/CinemaCamera.cpp src/Color.cpp src/DirectLight.cpp src/EquationSolver.cpp src/Light.cpp src/main.cpp src/Material.cpp src/Matrix.cpp src/Object.cpp src/ObjectPrimitive.cpp src/Plan.cpp src/Ray.cpp src/Raytracer.cpp src/RaytracerThread.cpp src/RenderingConfiguration.cpp src/RenderingInterface.cpp src/Scene.cpp src/Sphere.cpp src/Spot.cpp src/Texture.cpp src/Vector.cpp objects/raytracer-421.0.0/ && (cd `dirname objects/raytracer-421.0.0` && $(TAR) raytracer-421.0.0.tar raytracer-421.0.0 && $(COMPRESS) raytracer-421.0.0.tar) && $(MOVE) `dirname objects/raytracer-421.0.0`/raytracer-421.0.0.tar.gz . && $(DEL_FILE) -r objects/raytracer-421.0.0


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

compiler_moc_header_make_all:
compiler_moc_header_clean:
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
compiler_clean: 

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

objects/DirectLight.o: src/DirectLight.cpp src/DirectLight.hpp \
		src/Light.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Color.hpp \
		src/Ray.hpp \
		src/RenderingConfiguration.hpp \
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
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/EquationSolver.o src/EquationSolver.cpp

objects/Light.o: src/Light.cpp src/Light.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Color.hpp \
		src/Ray.hpp \
		src/RenderingConfiguration.hpp \
		src/Object.hpp \
		src/Rotation.hpp \
		src/ObjectPrimitive.hpp \
		src/BoundingBox.hpp \
		src/Material.hpp \
		src/Texture.hpp
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
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp \
		src/CinemaCamera.hpp \
		src/Sphere.hpp \
		src/Spot.hpp \
		src/Plan.hpp
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

objects/Plan.o: src/Plan.cpp src/Raytracer.hpp \
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
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp \
		src/Plan.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Plan.o src/Plan.cpp

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
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/RaytracerThread.o src/RaytracerThread.cpp

objects/RenderingConfiguration.o: src/RenderingConfiguration.cpp src/RenderingConfiguration.hpp
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
		src/RenderingConfiguration.hpp
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
		src/RenderingInterface.hpp \
		src/RaytracerThread.hpp \
		src/Sphere.hpp \
		src/EquationSolver.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Sphere.o src/Sphere.cpp

objects/Spot.o: src/Spot.cpp src/Spot.hpp \
		src/Light.hpp \
		src/Point.hpp \
		src/Vector.hpp \
		src/Color.hpp \
		src/Ray.hpp \
		src/RenderingConfiguration.hpp \
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

objects/Vector.o: src/Vector.cpp src/Vector.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objects/Vector.o src/Vector.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

re:	clean all
