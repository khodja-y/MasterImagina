#ifndef PLAN_H
#define PLAN_H

#include <qopengl.h>
#include <QVector>
#include <QVector3D>

class Plan
{
public:
    Plan();
    const GLfloat *constData() const { return m_data.constData(); }
    int count() const { return m_count; }
    int vertexCount() const { return m_count / 6; }

private:
    void triangle(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2, GLfloat x3, GLfloat y3);
    void quad(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2, GLfloat x3, GLfloat y3, GLfloat x4, GLfloat y4);
    void add(const QVector3D &v, const QVector3D &n);
    QVector<GLfloat> m_data;
    int m_count;
};

#endif // PLAN_H
