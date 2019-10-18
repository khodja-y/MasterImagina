HEADERS       = glwidget.h \
                point.hpp \
                surface.h \
                vector.hpp \
                window.h \
                mainwindow.h \
                logo.h \
    glwidget.h \
    logo.h \
    mainwindow.h \
    point.hpp \
    surface.h \
    vector.hpp \
    window.h \
    glwidget.h \
    logo.h \
    mainwindow.h \
    point.hpp \
    surface.h \
    vector.hpp \
    window.h
SOURCES       = glwidget.cpp \
                main.cpp \
                point.cpp \
                surface.cpp \
                vector.cpp \
                window.cpp \
                mainwindow.cpp \
                logo.cpp \
    glwidget.cpp \
    logo.cpp \
    main.cpp \
    mainwindow.cpp \
    point.cpp \
    surface.cpp \
    vector.cpp \
    window.cpp \
    glwidget.cpp \
    logo.cpp \
    main.cpp \
    mainwindow.cpp \
    point.cpp \
    surface.cpp \
    vector.cpp \
    window.cpp
RESOURCES +=

QT           += widgets

# install
target.path = $$[QT_INSTALL_EXAMPLES]/opengl/hellogl2
INSTALLS += target

DISTFILES += \
    fragmentShaderSource.frag \
    fragmentShaderSourceCore.frag \
    ressources/grass.png \
    ressources/heightmap-1024x1024.png \
    ressources/rock.png \
    ressources/snowrocks.png \
    vertexShaderSource.vert \
    vertexShaderSourceCore.vert \
    heightmap.png \
    ressources/grass.png \
    ressources/heightmap-1024x1024.png \
    ressources/rock.png \
    ressources/snowrocks.png \
    grass.png \
    heightmap.png \
    rock.png \
    snowrocks.png \
    fragmentShaderSource.frag \
    ressources/grass.png \
    ressources/heightmap-1024x1024.png \
    ressources/rock.png \
    ressources/snowrocks.png

SUBDIRS += \
    hellogl2.pro
