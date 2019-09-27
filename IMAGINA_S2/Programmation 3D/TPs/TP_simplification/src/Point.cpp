#include "Point.h"
#include <math.h>
#include "GL/glut.h"
#include <iostream>

using namespace std;

Point::Point(){
	m_x = 0;
	m_y = 0;
	m_z = 0;
}

Point::Point(double x, double y, double z){
	m_x = x;
	m_y = y;
	m_z = z;
}

Point::Point(const Point& p){
	m_x = p.m_x;
	m_y = p.m_y;
	m_z = p.m_z;
}

double Point::getX(){
	return m_x;
}

double Point::getY(){
	return m_y;
}

double Point::getZ(){
	return m_z;
}

void Point::setX(double x){
	m_x = x;
}

void Point::setY(double y){
	m_y = y;
}

void Point::setZ(double z){
	m_z = z;
}

Point* Point::ProjectOnLine(Point Point1Line, Point Point2Line){
	Vector * v = new Vector(Point1Line, Point2Line);
	return ProjectOnLine(*v, Point1Line);
}

Point* Point::ProjectOnLine(Vector v, Point PLine){
	Vector * v2 = new Vector(PLine, *this);
	double dist = v2->Scalar(v)/v.Norme();
	cout << v2->getX() << " " << v2->getY() << " " << v2->getZ() << '\n';
	return new Point(PLine.getX() + v.getX()*dist,
	                 PLine.getY() + v.getY()*dist,
	                 PLine.getZ() + v.getZ()*dist);
}

Point* Point::ProjectOnPlan(Vector NormalOfPlane, Point PointOnPlane){
	return new Point();
}

void Point::DrawPoint(){
	glVertex3f(m_x, m_y, m_z);
}