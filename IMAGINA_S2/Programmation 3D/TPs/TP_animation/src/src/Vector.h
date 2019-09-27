#ifndef VECTOR_H
#define VECTOR_H

#include "Point.h"



class Vector
{
    public:
        Vector();
        virtual ~Vector();
        Vector(double x, double y, double z);
        Vector(Vector& p);
        //Vector(Point a, Point b);
        double getX();
        double getY();
        double getZ();
        void setX(double x);
        void setY(double y);
        void setZ(double z);
        double norme();
        void normalize();
        void sc(int sc);
        double scalar(Vector& v2);
        Vector* vectoriel(Vector& v2);
        double angle(Vector& v2);
	    

    protected:

    private:
        double x;
        double y;
        double z;
};

#endif // VECTOR_H
