#include "Vector.h"
#include <math.h>
#include "GL/glut.h"

using namespace std;

Vector::Vector(){
	m_x = 0;
	m_y = 0;
	m_z = 0;
}

Vector::Vector(double x, double y, double z){
	m_x = x;
	m_y = y;
	m_z = z;
}

Vector::Vector(const Vector& p){
	m_x = p.m_x;
	m_y = p.m_y;
	m_z = p.m_z;
}

Vector::Vector(Point p1, Point p2){
	m_x = p2.getX() - p1.getX();
	m_y = p2.getY() - p1.getY();
	m_z = p2.getZ() - p1.getZ();
}

double Vector::getX(){
	return m_x;
}

double Vector::getY(){
	return m_y;
}

double Vector::getZ(){
	return m_z;
}

void Vector::setX(double x){
	m_x = x;
}

void Vector::setY(double y){
	m_y = y;
}

void Vector::setZ(double z){
	m_z = z;
}

double Vector::Norme(){
	return sqrt(m_x*m_x + m_y*m_y + m_z*m_z);
}

void Vector::Normalize(){
	double norme = Norme();
	m_x /= norme;
	m_y /= norme;
	m_z /= norme;
}

double Vector::Scalar(Vector vector2){
	return m_x*vector2.getX() + m_y*vector2.getY() + m_z*vector2.getZ();
}

Vector * Vector::Vectoriel(Vector vector2){
	return new Vector(m_y * vector2.getZ() - m_z * vector2.getY(),
					  m_z * vector2.getX() - m_x * vector2.getZ(),
					  m_x * vector2.getY() - m_y * vector2.getX());
}

double Vector::Angle(Vector vector2){
	double scalaire = Scalar(vector2);
	return acos(scalaire/(Norme() * vector2.Norme()));
}

void Vector::DrawLine(Point p){
	Point * temp_p = new Point(p.getX() + m_x,
							 p.getY() + m_y,
							 p.getZ() + m_z);

	glBegin(GL_LINES);
	glVertex3f(p.getX(), p.getY(), p.getZ());
	glVertex3f(temp_p->getX(), temp_p->getY(), temp_p->getZ());
	glEnd();

	glBegin(GL_POINTS);
	glPointSize(2.0f);
	glVertex3f(p.getX(), p.getY(), p.getZ());
	glVertex3f(temp_p->getX(), temp_p->getY(), temp_p->getZ());
	glEnd();
}
