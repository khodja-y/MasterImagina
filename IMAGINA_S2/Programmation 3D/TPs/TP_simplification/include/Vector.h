#ifndef VECTOR_H
#define VECTOR_H

class Vector;

#include "Point.h"

class Vector{
	public :
	Vector();
	Vector(double x, double y, double z);
	Vector(const Vector& p);
	Vector(Point p1, Point p2);
	double getX();
	double getY();
	double getZ();
	void setX(double x);
	void setY(double y);
	void setZ(double z);
	double Norme();
	void Normalize();
	double Scalar(Vector vector2);
	Vector * Vectoriel(Vector vector2);
	double Angle(Vector vector2);
	void DrawLine(Point p);

	private:
	double m_x, m_y, m_z;
};

#endif