//
//  Vector.hpp
//  TP1
//
//  Created by Alexandre Gresset on 21/01/2019.
//  Copyright © 2019 Alexandre Gresset. All rights reserved.
//

#ifndef Vector_hpp
#define Vector_hpp

#include <stdio.h>

class Vector {

    public :

    /* CONSTRUCTORS */
    Vector();
    Vector(double x, double y, double z);
    Vector(Vector const &v);
    //    ~Vector();

    /* GETTER */
    double getX() const;
    double getY() const;
    double getZ() const;

    /* SETTER */
    void setX(double x);
    void setY(double y);
    void setZ(double z);

    /* METHODES */
    double norme();
    void normalized();
    double scalar(Vector v);
    Vector vectoriel(Vector v);
    double angle(Vector v);

    /* ATTRIBUTES */
    private :
    double x;
    double y;
    double z;
};

#endif /* Vector_hpp */

