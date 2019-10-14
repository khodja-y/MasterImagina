#ifndef POINT_H
#define POINT_H

#include "Vector.h"
#include "Vector.cpp"


class Point
{
    public:

    double x;
    double y;
    double z;


        Point();
        virtual ~Point();
        Point(double x, double y, double z);
        Point(Point& p);
        double getX();
        double getY();
        double getZ();
        void setX(double x);
        void setY(double y);
        void setZ(double z);
        void scalar(int sc);
        void copy(Point& p);
        Point projectOnLine(Point& p1Line, Point& p2Line);
        Point projectOnLine(Vector vecteur, Point& pLine);
        Point projectOnPlane(Point pointOnPlane, Vector normalOfPlane);

    protected:

    private:

};

#endif // POINT_H
