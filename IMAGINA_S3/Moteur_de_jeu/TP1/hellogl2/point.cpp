//
//  Point.cpp
//  TP1
//
//  Created by Alexandre Gresset on 21/01/2019.
//  Copyright © 2019 Alexandre Gresset. All rights reserved.
//

#include "point.hpp"
#include "vector.hpp"

// Class : Point

Point::Point() {
    this->x = 0;
    this->y = 0;
    this->z = 0;
};

Point::Point(double x, double y, double z) {
    this->x = x;
    this->y = y;
    this->z = z;
};

Point::Point(Point const &p) {
    this->x = p.getX();
    this->y = p.getY();
    this->z = p.getZ();
};

/* GETTER */
double Point::getX() const { return this->x; }
double Point::getY() const { return this->y; }
double Point::getZ() const { return this->z; }

/* SETTER */
void Point::setX(double x) { this->x = (x); }
void Point::setY(double y) { this->y = (y); }
void Point::setZ(double z) { this->z = (z); }

/* METHODES */
//Projection de this sur la droite p1 p2
Point Point::projectOnLine(Point p1, Point p2) {
    Vector p1p2 = Vector(p2.getX() - p1.getX(), p2.getY() - p1.getY(), p2.getZ() - p1.getZ());
    Vector p1ToThis = Vector(this->x - p1.getX(), this->y - p1.getY(), this->z - p1.getZ());
    double translation = p1p2.scalar(p1ToThis) / p1p2.norme();
    double resX = p1.getX() + p1p2.getX()*translation / p1p2.norme();
    double resY = p1.getY() + p1p2.getY()*translation / p1p2.norme();
    double resZ = p1.getZ() + p1p2.getZ()*translation / p1p2.norme();
    return Point(resX, resY, resZ);
};

//Projection de this sur la droite definie par le vecteur v + le point p
Point Point::projectOnLine(Vector v, Point p) {
    Vector pToThis = Vector(this->x - p.getX(), this->y - p.getY(), this->z - p.getZ());
    double translation = v.scalar(pToThis) / v.norme();
    double resX = p.getX() + v.getX()*translation / v.norme();
    double resY = p.getY() + v.getY()*translation / v.norme();
    double resZ = p.getZ() + v.getZ()*translation / v.norme();
    return Point(resX, resY, resZ);
};

Point Point::projectOnPlane(Point p, Vector v) {
    Vector thisToP = Vector(p.getX() - this->x, p.getY() - this->y, p.getZ() - this->z);
    double translation = v.scalar(thisToP) / v.norme();
    double resX = this->x - v.getX()*translation / v.norme();
    double resY = this->y - v.getY()*translation / v.norme();
    double resZ = this->z - v.getZ()*translation / v.norme();
    return Point(resX, resY, resZ);
};
