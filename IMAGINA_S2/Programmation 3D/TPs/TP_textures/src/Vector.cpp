#include "Vector.h"
#include "math.h"

#include "Point.h"


Vector::Vector(){
    //ctor
    this->x = 0;
    this->y = 0;
    this->z = 0;

}

/*Vector::Vector(Point a, Point b){
    //ctor
    this->x = b.getX() - a.getX();
    this->y = b.getY() - a.getY();
    this->z = b.getZ() - a.getZ();

}*/

Vector::Vector(double x, double y, double z){
    this->x = x;
    this->y = y;
    this->z = z;
}

Vector::Vector(Vector& p){
    this->x = p.getX();
    this->y = p.getY();
    this->z = p.getZ();
}

double Vector::getX(){
    return this->x;
}

double Vector::getY(){
    return this->y;
}

double Vector::getZ(){
    return this->z;
}

void Vector::setX(double x){
    this->x = x;
}

void Vector::setY(double y){
    this->y = y;
}

void Vector::setZ(double z){
    this->z = z;
}

double Vector::norme(){
    return (sqrt(pow(this->x,2) + pow(this->y,2) + pow(this->z,2)));
}

void Vector::normalize(){
    double norme = this->norme();

    this->x /= norme;
    this->y /= norme;
    this->z /= norme;
}

double Vector::scalar(Vector& v2){
    return (this->x*v2.getX() + this->y*v2.getY() + this->getZ()*v2.getZ());
}

void Vector::sc(int sc){
    this->x *= sc;
    this->y *= sc;
    this->y *= sc;
}

Vector* Vector::vectoriel(Vector& v2){
    Vector *vect = new Vector();
    vect->setX(this->y*v2.getZ() - this->z*v2.getY());
    vect->setY(this->z*v2.getX() - this->x*v2.getZ());
    vect->setZ(this->x*v2.getY() - this->y*v2.getX());

    return vect;
}

double Vector::angle(Vector& v2){
    Vector vect(*(this->vectoriel(v2)));


    float s = vect.norme() / (this->norme() * v2.norme());

    return asin(s);
}

Vector::~Vector(){

}




