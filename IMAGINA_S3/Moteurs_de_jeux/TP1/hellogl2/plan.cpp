#include "plan.h"
#include "Vec3.h"
#include <ostream>
#include <vector>
#include <random>

using namespace std;


Plan::Plan()

{


    Vec3 p0(+0.1f, -0.1f, 0.0f);
    Vec3 p1(0.5f, 0.75f, 0.0f);
    Vec3 p2(0.5f, 0.25f, 0.0f);
    Vec3 p3(-0.5f, +0.25f, 0.0f);

    plan16(p0,256);


//    const GLfloat x1 = -0.5f;
//    const GLfloat y1 = +0.25f;
//    const GLfloat x2 = -0.25f;
//    const GLfloat y2 = +0.75f;
//    const GLfloat x3 = -0.5f;
//    const GLfloat y3 = +0.25f;
//    const GLfloat x4 = +0.75f;
//    const GLfloat y4 = +0.0f;


//    quad(x1, y1, x2, y2, y2, x2, y1, x1);
//    quad(x3, y3, x4, y4, y4, x4, y3, x3);




}

void Plan::add(const QVector3D &v, const QVector3D &n)
{
    m_data.push_back(v.x()); ++m_count;
    m_data.push_back(v.y()); ++m_count;
    m_data.push_back(v.z()); ++m_count;

    m_data.push_back(n.x()); ++m_count;
    m_data.push_back(n.y()); ++m_count;
    m_data.push_back(n.z()); ++m_count;
}

void Plan::quad(GLfloat x1, GLfloat y1, GLfloat z1, GLfloat x2, GLfloat y2, GLfloat z2, GLfloat x3, GLfloat y3, GLfloat z3, GLfloat x4, GLfloat y4, GLfloat z4)
{
    QVector3D n = QVector3D::normal(QVector3D(x4 - x1, y4 - y1, z4 - z1), QVector3D(x2 - x1, y2 - y1, z2 - z1));

    add(QVector3D(x1, y1, z1), n);
    add(QVector3D(x4, y4, z4), n);
    add(QVector3D(x2, y2, z2), n);

    add(QVector3D(x3, y3, z3), n);
    add(QVector3D(x2, y2, z2), n);
    add(QVector3D(x4, y4, z4), n);

    //n = QVector3D::normal(QVector3D(x1 - x3, y1 - y3, 0.0f), QVector3D(x2 - x3, y2 - y3, 0.0f));


    add(QVector3D(x4, y4, z4), n);
    add(QVector3D(x1, y1, z1), n);
    add(QVector3D(x2, y2, z2), n);

    add(QVector3D(x2, y2, z2), n);
    add(QVector3D(x3, y3, z3), n);
    add(QVector3D(x4, y4, z4), n);
}


void Plan::triangle(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2, GLfloat x3, GLfloat y3)
{
    QVector3D n = QVector3D::normal(QVector3D(x3 - x1, y3 - y1, 0.0f), QVector3D(x2 - x1, y2 - y1, 0.0f));

    add(QVector3D(x1, y1, -0.05f), n);
    add(QVector3D(x3, y3, -0.05f), n);
    add(QVector3D(x2, y2, -0.05f), n);

    add(QVector3D(x3, y3, -0.05f), n);
    add(QVector3D(x2, y2, -0.05f), n);
    add(QVector3D(x1, y1, -0.05f), n);

    n = QVector3D::normal(QVector3D(x1 - x3, y1 - y3, 0.0f), QVector3D(x2 - x3, y2 - y3, 0.0f));

    add(QVector3D(x3, y3, 0.05f), n);
    add(QVector3D(x1, y1, 0.05f), n);
    add(QVector3D(x2, y2, 0.05f), n);

    add(QVector3D(x2, y2, 0.05f), n);
    add(QVector3D(x3, y3, 0.05f), n);
    add(QVector3D(x1, y1, 0.05f), n);
}

void Plan::plan16(Vec3 p0, int nbrPoints){

    int nbrPoint = sqrt(nbrPoints);

    Vec3 points[nbrPoint][nbrPoint];

    //quad(p0[0], p0[1], p1[0], p1[1], p2[0], p2[1], p3[0], p3[1]);


    for(int i=0; i<nbrPoint; i++){
        for(int j=0; j<nbrPoint; j++){
            Vec3 newPoint;

            newPoint[0] = (p0[0] + i) / 100;
            newPoint[1] = (p0[1] + j) / 100;
            newPoint[2] = (p0[2] + rand()%nbrPoint) /100;

            points[i][j] = newPoint;
        }

    }

    for(int i=0; i<nbrPoint - 1; i++){
        for(int j=0; j<nbrPoint - 1; j++){

            Vec3 p0(points[i][j]);
            Vec3 p1(points[i][j+1]);
            Vec3 p2(points[i+1][j+1]);
            Vec3 p3(points[i+1][j]);

//            cout<< "(" << p0[0] << ", " << p0[1] << ") " <<
//                   "(" << p1[0] << ", " <<  p1[1] << ") " <<
//                   "(" << p2[0] << ", " <<  p2[1] << ") " <<
//                   "(" << p3[0] << ", " <<   p3[1] << ") " << endl;

            quad(p0[0], p0[1], p0[2],
                 p1[0], p1[1], p1[2],
                 p2[0], p2[1], p2[2],
                 p3[0], p3[1], p3[2]);
        }

    }





}
