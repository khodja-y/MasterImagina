#include "Transform.hpp"
#include "glm/vec3.hpp"
#include "glm/mat3x3.hpp"

Transform::Transform(){

}

Transform::Transform(mat3x3 m_m, vec3 m_t) {
    m(m_m);
    t(m_t);
}

vec3 Transform::applyToPoint(vec3 p){
    return m * p + t;
}

vec3 applyToVector(vec3 v){
    return m*v;
}

Transform::~Transform()
{
}
