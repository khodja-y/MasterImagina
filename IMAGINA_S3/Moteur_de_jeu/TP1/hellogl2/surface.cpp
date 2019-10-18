#include "surface.h"
#include <qmath.h>
#include <vector>
#include <QImage>
#include <QPixmap>
#include <iostream>
#include <stdio.h>
Surface::Surface()
    : m_count(0)
{

    point3D p1 = {-0.10f, -0.10f, +0.00f};
    point3D p2 = {-0.10f, +0.10f, +0.00f};
    point3D p3 = {+0.10f, +0.10f, +0.00f};
    point3D p4 = {+0.10f, -0.10f, +0.00f};

    //quad(p1, p2, p3, p4);

    std::vector<std::vector<point3D>> plan = plan16pts(p1,p2,p3,p4);
    plan[3][4].z = +0.05f;
    //drawSurface(plan);


    Point grillePtsCtrl[NBPtsCtrlU][NBPtsCtrlV];
    grillePtsCtrl[0][0] = {-0.4, 0.1, 0.2};
    grillePtsCtrl[0][1] = {-0.1, 0.1, 0.2};
    grillePtsCtrl[0][2] = {0.0, 0.1, 0.2};
    grillePtsCtrl[0][3] = {0.1, 0.1, 0.2};
    grillePtsCtrl[0][4] = {0.2, 0.1, 0.2};
    grillePtsCtrl[1][0] = {-0.2, 0.1, 0.1};
    grillePtsCtrl[1][1] = {-0.1, -0.1, 0.1};
    grillePtsCtrl[1][2] = {0.0, -0.1, 0.1};
    grillePtsCtrl[1][3] = {0.1, -0.1, 0.1};
    grillePtsCtrl[1][4] = {0.2, 0.1, 0.1};
    grillePtsCtrl[2][0] = {-0.2, 0.1, 0.0};
    grillePtsCtrl[2][1] = {-0.1, -0.1, 0.0};
    grillePtsCtrl[2][2] = {0.0, 2.0, 0.0};
    grillePtsCtrl[2][3] = {0.1, -0.1, 0.0};
    grillePtsCtrl[2][4] = {0.2, 0.1, 0.0};
    grillePtsCtrl[3][0] = {-0.2, 0.1, -0.1};
    grillePtsCtrl[3][1] = {-0.1, -0.1, -0.1};
    grillePtsCtrl[3][2] = {0.0, -0.1, -0.1};
    grillePtsCtrl[3][3] = {0.1, -0.1, -0.1};
    grillePtsCtrl[3][4] = {0.2, -0.1, 0.1};
    grillePtsCtrl[4][0] = {-0.2, 0.1, -0.2};
    grillePtsCtrl[4][1] = {-0.1, 0.1, -0.2};
    grillePtsCtrl[4][2] = {0.0, 0.1, -0.2};
    grillePtsCtrl[4][3] = {0.1, 0.1, -0.2};
    grillePtsCtrl[4][4] = {0.3, 0.1, -0.5};

    Point resultat[NBU][NBV];
    Point resultatInverse[NBV][NBU];
    bezierSurfaceByBernstein(grillePtsCtrl, resultat);

    drawSurfaceFromHeightMap(transform(resultat), ":/heightmap.png");
}


void Surface::add(const QVector3D &v, const QVector3D &n)
{
    m_data.push_back(v.x()); ++m_count;
    m_data.push_back(v.y()); ++m_count;
    m_data.push_back(v.z()); ++m_count;

    m_data.push_back(n.x()); ++m_count;
    m_data.push_back(n.y()); ++m_count;
    m_data.push_back(n.z()); ++m_count;


}

void Surface::quad(point3D p1, point3D p2, point3D p3, point3D p4) {
    QVector3D n = QVector3D::normal(QVector3D(p4.x - p1.x, p4.y - p1.y, 0.0f), QVector3D(p2.x - p1.x, p2.y - p1.y, 0.0f));

    add(QVector3D(p1.x, p1.y, p1.z), n);
    add(QVector3D(p4.x, p4.y, p4.z), n);
    add(QVector3D(p2.x, p2.y, p2.z), n);

    add(QVector3D(p3.x, p3.y, p3.z), n);
    add(QVector3D(p2.x, p2.y, p2.z), n);
    add(QVector3D(p4.x, p4.y, p4.z), n);

}


std::vector<std::vector<point3D>> Surface::plan16pts(point3D p1, point3D p2, point3D p3, point3D p4) {
    int nbPts = 16;
    std::vector<std::vector<point3D>> plan(nbPts);

    vector3D vec_p1p2 = {p2.x - p1.x, p2.y - p1.y, p2.z - p1.z};
    vector3D vec_p1p3 = {p3.x - p1.x, p3.y - p1.y, p3.z - p1.z};

    point3D res;

    for(int i=0; i<nbPts; i++) {
        for(int j=0; j<nbPts; j++){
            res.x = p1.x + i*(vec_p1p2.x / nbPts) + j*(vec_p1p3.x / nbPts);
            res.y = p1.y + i*(vec_p1p2.y / nbPts) + j*(vec_p1p3.y / nbPts);
            res.z = p1.z + i*(vec_p1p2.z / nbPts) + j*(vec_p1p3.z / nbPts);
            plan[i].push_back(res);
        }
    }

    return plan;
}


double Surface::fact(double k){
    return k == 0 ? 1 : k * fact(k-1);
}

void Surface::bezierCurveByBernstein(Point tabControlPoint[], long nbControlPoint, long nbU, Point *resultat) {
    double resX, resY, resZ;
    double u, polyBernstein;
    for(long i=0; i<nbU; i++) {
        u = i / double(nbU-1);
        resX=0.0; resY=0.0; resZ=0.0;
        for(long j=0; j<nbControlPoint; j++) {
            polyBernstein = (fact(nbControlPoint-1) / (fact(j)*fact(nbControlPoint-j-1))) * pow(u, j) * pow(1-u, nbControlPoint-j-1);
            resX += polyBernstein * tabControlPoint[j].getX();
            resY += polyBernstein * tabControlPoint[j].getY();
            resZ += polyBernstein * tabControlPoint[j].getZ();
        }
        resultat[i] = Point(resX, resY, resZ);
    }
}


void Surface::bezierSurfaceByBernstein(Point grilleControlPoint[NBPtsCtrlU][NBPtsCtrlV], Point res[NBU][NBV]) {
    Point tab[NBPtsCtrlV][NBPtsCtrlU];
    Point tabResU[NBPtsCtrlV][NBU];
    Point tabResV[NBU][NBPtsCtrlV];
    for(int i=0; i<NBPtsCtrlV; ++i) {
        for(int j=0; j<NBPtsCtrlU; ++j) {
            tab[i][j] = grilleControlPoint[j][i];
        }
        bezierCurveByBernstein(tab[i], NBPtsCtrlU, NBU, tabResU[i]);
    }
    for(int i=0; i<NBU; ++i) {
        for(int j=0; j<NBPtsCtrlV; ++j) {
            tabResV[i][j] = tabResU[j][i];
        }
        bezierCurveByBernstein(tabResV[i], NBPtsCtrlV, NBV, res[i]);
    }
}

std::vector<std::vector<point3D>> Surface::transform(Point plan[NBU][NBV]) {
    std::vector<std::vector<point3D>> res(NBU, std::vector<point3D>(NBV));
    point3D temp;
    for (int i=0; i<NBU; i++) {
        for (int j=0; j<NBV; j++) {
            temp.x = plan[i][j].getX();
            temp.y = plan[i][j].getY();
            temp.z = plan[i][j].getZ();

            res[i][j] = temp;
        }
    }
    return res;
}

void Surface::drawSurface(std::vector<std::vector<point3D>> plan) {
    for(int i=0; i<plan.size() - 1; i++) {
        for(int j=0; j<plan[i].size() - 1; j++) {

            quad(plan[i][j], plan[i][j+1], plan[i+1][j+1], plan[i+1][j]);
            quad(plan[i][j], plan[i+1][j], plan[i+1][j+1], plan[i][j+1]);

        }
    }
}

void Surface::drawSurfaceFromHeightMap(std::vector<std::vector<point3D>> plan, char heightMap[]) {
    QImage map;
    if(!map.load(heightMap)){
        qDebug("Error loading Image");
    }

    double moyenne = 0;
    for(int i=0; i < map.size().height() - 1; i++) {
        for(int j=0; j< map.size().width() - 1; j++) {
            moyenne += ((double) (i) / 10 + (double) (-map.pixelColor(i, j).blue()) / 10 + (double) (j / 10))/3;
            point3D a = {(double) (i) / 10,(double) (-map.pixelColor(i, j).blue()) / 10, (double) (j / 10)};
            point3D b = {(double) (i) / 10, (double) (-map.pixelColor(i, j + 1).blue()) / 10, (double) (j + 1) / 10};
            point3D c = {(double) (i + 1) / 10, (double) (-map.pixelColor(i + 1, j + 1).blue()) / 10, (double) (j + 1) / 10};
            point3D d = {(double) (i + 1) / 10, (double) (-map.pixelColor(i + 1, j).blue()) / 10, (double) (j) / 10};

            quad(a, b, c, d);
            quad(a, d, c, b);
            //quad(plan[i][j], plan[i+1][j], plan[i+1][j+1], plan[i][j+1]);

        }
    }

    centreDeGravite = moyenne / (map.size().height() * map.size().width());



}








