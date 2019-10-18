//
//  Point.hpp
//  TP1
//
//  Created by Alexandre Gresset on 21/01/2019.
//  Copyright © 2019 Alexandre Gresset. All rights reserved.
//

#ifndef Point_hpp
#define Point_hpp

#include <stdio.h>
#include "vector.hpp"

class Point {

    public :

    /* CONSTRUCTORS */
    Point();
    Point(double x, double y, double z);
    Point(Point const &p);
    //    ~Point();

    /* GETTER */
    double getX() const;
    double getY() const;
    double getZ() const;

    /* SETTER */
    void setX(double x);
    void setY(double y);
    void setZ(double z);

    /* METHODES*/
    Point projectOnLine(Point p1, Point p2);
    Point projectOnLine(Vector v, Point p);
    Point projectOnPlane(Point p, Vector v);

    /* ATTRIBUTES */
    private :
    double x;
    double y;
    double z;
};

#endif /* Point_hpp */

