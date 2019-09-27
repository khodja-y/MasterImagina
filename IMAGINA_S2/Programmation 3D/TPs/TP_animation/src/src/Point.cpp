#include "Point.h"


Point::Point()
{
    //ctor
    this->x = 0;
    this->y = 0;
    this->z = 0;
}

Point::Point(double x, double y, double z){
    this->x = x;
    this->y = y;
    this->z = z;
}

Point::Point(Point& p){
    this->x = p.getX();
    this->y = p.getY();
    this->z = p.getZ();
}

double Point::getX(){
    return this->x;
}

double Point::getY(){
    return this->y;
}

double Point::getZ(){
    return this->z;
}

void Point::setX(double x){
    this->x = x;
}

void Point::setY(double y){
    this->y = y;
}

void Point::setZ(double z){
    this->z = z;
}

Point Point::projectOnLine(Point& p1Line, Point& p2Line){


    Vector v1(this->x - p1Line.getX(),this->y - p1Line.getY(),this->z - p1Line.getZ());
    Vector v2(p2Line.x - p1Line.getX(),p2Line.y - p1Line.getY(),p2Line.z - p1Line.getZ());
    double normeV3 = v1.scalar(v2) / v2.norme();

    Point p3Line(p1Line.getX() + v2.getX()*normeV3, p1Line.getY() + v2.getY()*normeV3, p1Line.getZ() + v2.getZ()*normeV3);

    return p3Line;
}

/*Point Point::projectOnLine(Vector vecteur, Point& pLine){

    Vector v1(this->x - pLine.getX(),this->y - pLine.getY(),this->z - pLine.getZ());
    double normeV3 = v1.scalar(vecteur) / vecteur.norme();

    Point p3Line(pLine.getX() + vecteur.getX()*normeV3, pLine.getY() + vecteur.getY()*normeV3, pLine.getZ() + vecteur.getZ()*normeV3);

    return p3Line;
}

Point Point::projectOnPlane(Point pointOnLine, Vector normalOnPlane){

    Vector v1(pointOnLine.getX() - this->getX(), pointOnLine.getY() - this->getY(), pointOnLine.getZ() - this->getZ());

    double norme = normalOnPlane.scalar(v1) / normalOnPlane.norme();

    Point p2Plane(this->getX() + normalOnPlane.getX()*norme, this->getY() + normalOnPlane.getY()*norme, this->getZ() + normalOnPlane.getZ()*norme);

    return p2Plane;

}*/

void Point::copy(Point& p){
    this->x = p.getX();
    this->y = p.getY();
    this->z = p.getZ();
}

void Point::scalar(int sc){
    this->x = (this->x*sc);
    this->y = (this->y*sc);
    this->z = (this->z*sc);
}

Point::~Point()
{
    //dtor
}
