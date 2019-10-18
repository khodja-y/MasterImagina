#ifndef SURFACE_H
#define SURFACE_H

#include <qopengl.h>
#include <QVector>
#include <QVector3D>
#include <vector>
#include "point.hpp"
#include "vector.hpp"

#define NBPtsCtrlU 5
#define NBPtsCtrlV 5

#define NBU 50
#define NBV 50

struct point3D {GLfloat x; GLfloat y; GLfloat z;};
struct vector3D {GLfloat x; GLfloat y; GLfloat z;};

class Surface
{
public:
    Surface();
    const GLfloat *constData() const { return m_data.constData(); }
    int count() const { return m_count; }
    int vertexCount() const { return m_count / 6; }
    int centreDeGravite;

private:

    void add(const QVector3D &v, const QVector3D &n);
    void quad(point3D p1, point3D p2, point3D p3, point3D p4);


    std::vector<std::vector<point3D>> plan16pts(point3D p1, point3D p2, point3D p3, point3D p4);

    double fact(double k);

    void bezierCurveByBernstein(Point tabControlPoint[], long nbControlPoint, long nbU, Point *resultat);
    void bezierSurfaceByBernstein(Point grilleControlPoint[NBPtsCtrlU][NBPtsCtrlV], Point res[NBU][NBV]);

    std::vector<std::vector<point3D>> transform(Point plan[NBU][NBV]);
    void drawSurface(std::vector<std::vector<point3D>> plan);
    void drawSurfaceFromHeightMap(std::vector<std::vector<point3D>> plan, char heightMap[]);

    QVector<GLfloat> m_data;
    int m_count;


};

#endif // SURFACE_H
