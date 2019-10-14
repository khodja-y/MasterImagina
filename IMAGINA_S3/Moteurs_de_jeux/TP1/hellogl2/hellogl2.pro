HEADERS       = glwidget.h \
                window.h \
                mainwindow.h \
                logo.h \
                plan.h \
    Point.h \
    Vector.h \
    Vec3.h
SOURCES       = glwidget.cpp \
                main.cpp \
                window.cpp \
                mainwindow.cpp \
                logo.cpp \
                plan.cpp \
    Point.cpp \
    Vector.cpp

QT           += widgets

# install
target.path = $$[QT_INSTALL_EXAMPLES]/opengl/hellogl2
INSTALLS += target
