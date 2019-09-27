#ifndef POINT_H
#define POINT_H

#include "GL/glut.h"
#include <math.h>

class Point;

#include "Vector.h"

class Point{
	public :
	Point();
	Point(double x, double y, double z);
	Point(const Point& p);
	double getX();
	double getY();
	double getZ();
	void setX(double x);
	void setY(double y);
	void setZ(double z);
	Point* ProjectOnLine(Point Point1Line, Point Point2Line);
	Point* ProjectOnLine(Vector vecteur, Point PLine);
	Point* ProjectOnPlan(Vector NormalOfPlane, Point PointOnPlane);
	void DrawPoint();

	private:
	double m_x, m_y, m_z;
};

#endif