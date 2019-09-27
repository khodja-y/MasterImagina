#ifndef POINT_H
#define POINT_H




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
        void scalar(int sc);
        void copy(Point& p);
        Point projectOnLine(Point& p1Line, Point& p2Line);
        /*Point projectOnLine(Vector vecteur, Point& pLine);
        Point projectOnPlane(Point pointOnPlane, Vector normalOfPlane);
        double getX();
        double getY();
        double getZ();
        void setX(double x);
        void setY(double y);
        void setZ(double z);*/

    protected:

        
};

#endif // POINT_H
