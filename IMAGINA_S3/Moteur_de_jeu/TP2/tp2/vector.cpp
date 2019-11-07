//
//  Vector.cpp
//  TP1
//
//  Created by Alexandre Gresset on 21/01/2019.
//  Copyright © 2019 Alexandre Gresset. All rights reserved.
//

#include "vector.hpp"
#include "math.h"

// Class : Vector

Vector::Vector() {
    this->x = 0;
    this->y = 0;
    this->z = 0;
};

Vector::Vector(double x, double y, double z) {
    this->x = x;
    this->y = y;
    this->z = z;
};

Vector::Vector(Vector const &v) {
    this->x = v.getX();
    this->y = v.getY();
    this->z = v.getZ();
};

/* GETTER */
double Vector::getX() const { return this->x; }
double Vector::getY() const { return this->y; }
double Vector::getZ() const { return this->z; }

/* SETTER */
void Vector::setX(double x) { this->x = (x); }
void Vector::setY(double y) { this->y = (y); }
void Vector::setZ(double z) { this->z = (z); }

/* METHODES */
double Vector::norme() {
    return sqrt(pow(this->x,2) + pow(this->y,2) + pow(this->z, 2));
};

void Vector::normalized() {
    double n = norme();
    if(n!=0) {
        this->x = this->x / n;
        this->y = this->y / n;
        this->z = this->z / n;
    }
};

double Vector::scalar(Vector v) {
    return (this->x*v.getX() + this->y*v.getY() + this->z*v.getZ());
};

Vector Vector::vectoriel(Vector v) {
    double resX = this->y*v.getZ() - this->z*v.getY();
    double resY = this->z*v.getX() - this->x*v.getZ();
    double resZ = this->x*v.getY() - this->y*v.getX();
    return Vector(resX, resY, resZ);
};

double Vector::angle(Vector v) {
    return acos(scalar(v) / (norme()*v.norme())) * (180.0/M_PI);
};

