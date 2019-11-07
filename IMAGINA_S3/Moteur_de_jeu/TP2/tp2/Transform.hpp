#ifndef TRANSFOM_HPP
#define TRANSFOM_HPP
#include "BasicIO.h"
#include "point.hpp"
#include "glm/mat3x3.hpp"
#include "glm/vec3.hpp"
#include <vector>

class Transform
{
    private:
        mat3x3 m;
        vec3 t;
    public:
        Transform();
        Transform(mat3x3 m_m, vec3 m_t);
        ~Transform();
        //vec4 apply(vec4 p);

        vec3 applyToPoint(vec3 p);
        vec3 applyToVector(vec3 v);
        vec3 applyToVersor(vec3 v);
};



#endif
