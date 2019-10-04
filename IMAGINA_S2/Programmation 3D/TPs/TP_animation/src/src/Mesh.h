#ifndef MESH_H
#define MESH_H


#include <vector>
#include <string>
#include "Vec3.h"
#include "Skeleton.h"
#include "Vector.h"
#include "Point.h"
#include "Point.cpp"
#include "Vector.cpp"

#include <cmath>

#include <GL/glut.h>


// -------------------------------------------
// Basic Mesh class
// -------------------------------------------

struct MeshVertex {
    inline MeshVertex () {
        w.clear();
    }
    inline MeshVertex (const Vec3 & _p, const Vec3 & _n) : p (_p), n (_n) {
        w.clear();
    }
    inline MeshVertex (const MeshVertex & vertex) : p (vertex.p), n (vertex.n) , w(vertex.w) {
    }
    inline virtual ~MeshVertex () {}
    inline MeshVertex & operator = (const MeshVertex & vertex) {
        p = vertex.p;
        n = vertex.n;
        w = vertex.w;
        return (*this);
    }
    // membres :
    Vec3 p; // une position
    Vec3 n; // une normale
    std::vector< double > w; // skinning weights
};

struct MeshTriangle {
    inline MeshTriangle () {
        v[0] = v[1] = v[2] = 0;
    }
    inline MeshTriangle (const MeshTriangle & t) {
        v[0] = t.v[0];   v[1] = t.v[1];   v[2] = t.v[2];
    }
    inline MeshTriangle (unsigned int v0, unsigned int v1, unsigned int v2) {
        v[0] = v0;   v[1] = v1;   v[2] = v2;
    }
    inline virtual ~MeshTriangle () {}
    inline MeshTriangle & operator = (const MeshTriangle & t) {
        v[0] = t.v[0];   v[1] = t.v[1];   v[2] = t.v[2];
        return (*this);
    }
    // membres :
    unsigned int v[3];
};




class Mesh {
public:
    std::vector<MeshVertex> V;
    std::vector<MeshTriangle> T;

    void loadOFF (const std::string & filename);
    void recomputeNormals ();


    void computeSkinningWeights( Skeleton const & skeleton ) {
        //---------------------------------------------------//
        //---------------------------------------------------//
        // code to change :

        // Indications:
        // you should compute weights for each vertex w.r.t. the skeleton bones
        // so each vertex will have B weights (B = number of bones)
        // these weights shoud be stored in vertex.w:

        for( unsigned int i = 0 ; i < V.size() ; ++i ) {
            
            V[i].w.resize(skeleton.bones.size());
            MeshVertex & vertex = V[ i ];

            for(unsigned int j=0; j< skeleton.bones.size(); j++){

                Point p1, p2, p3, p;

                p1 = Point(vertex.p[0], vertex.p[1], vertex.p[2]);
                
                p2 = Point(skeleton.articulations[skeleton.bones[j].joints[0]].p[0], skeleton.articulations[skeleton.bones[j].joints[0]].p[1], skeleton.articulations[skeleton.bones[j].joints[0]].p[2]);
                p3 = Point(skeleton.articulations[skeleton.bones[j].joints[1]].p[0], skeleton.articulations[skeleton.bones[j].joints[1]].p[1], skeleton.articulations[skeleton.bones[j].joints[1]].p[2]);

                p = p1.projectOnLine(p2, p3);

                Vector v1, v2, v3;

                v1 = Vector(p3.x - p2.x, p3.y - p2.y, p3.z - p2.z);
                v2 = Vector(p2.x - p1.x, p2.y - p1.y, p2.z - p1.z);
                v3 = Vector(p3.x - p1.x, p3.y - p1.y, p3.z - p1.z);

                
                double sc1 = v1.scalar(v2);
                double sc2 = v1.scalar(v3);

                if(sc1<0 || sc2<0){

                    double dist1 = sqrt(abs(vertex.p[0] - skeleton.articulations[skeleton.bones[j].joints[0]].p[0]) 
                                     +  abs(vertex.p[1] - skeleton.articulations[skeleton.bones[j].joints[0]].p[1]) 
                                     +  abs(vertex.p[2] - skeleton.articulations[skeleton.bones[j].joints[0]].p[2]));

                    double dist2 = sqrt(abs(vertex.p[0] - skeleton.articulations[skeleton.bones[j].joints[1]].p[0]) 
                                     +  abs(vertex.p[1] - skeleton.articulations[skeleton.bones[j].joints[1]].p[1]) 
                                     +  abs(vertex.p[2] - skeleton.articulations[skeleton.bones[j].joints[1]].p[2]));

                    if(dist1<dist2){
                        vertex.w[j] = (1. / pow(dist1,2));
                    }else{
                        vertex.w[j] = (1. / pow(dist2,2));
                    }

                }else{
                    double dist = sqrt(abs(p.x - p1.x) + abs(p.y - p1.y) + abs(p.z - p1.z));

                    vertex.w[j] = (1./pow(dist,2));
                }

                



                /* */               
            }
        }



        
        
        //---------------------------------------------------//
        //---------------------------------------------------//
        //---------------------------------------------------//
    }

    void draw() const {
        glEnable(GL_LIGHTING);
        glBegin (GL_TRIANGLES);
        for (unsigned int i = 0; i < T.size (); i++)
            for (unsigned int j = 0; j < 3; j++) {
                const MeshVertex & v = V[T[i].v[j]];
                glNormal3f (v.n[0], v.n[1], v.n[2]);
                glVertex3f (v.p[0], v.p[1], v.p[2]);
            }
        glEnd ();
    }

    void drawTransformedMesh( SkeletonTransformation const & transfo ) const {
        std::vector< Vec3 > newPositions( V.size() );

        //---------------------------------------------------//
        //---------------------------------------------------//
        // code to change :
        for( unsigned int i = 0 ; i < V.size() ; ++i ) {
            Vec3 p = V[i].p;

            Vec3 p1 = V[i].p;


            // Indications:
            // you should use the skinning weights to blend the transformations of the vertex position by the bones.
            for(unsigned int j=0; j < V[i].w.size(); j++){

                Mat3 R = transfo.boneTransformations[j].worldSpaceRotation;
                Vec3 T = transfo.boneTransformations[j].worldSpaceTranslation;

                p1 += V[i].w[j] * (R * p + T);
            }

            newPositions[ i ] = p1;
        }
        //---------------------------------------------------//
        //---------------------------------------------------//
        //---------------------------------------------------//

        glEnable(GL_LIGHTING);
        glBegin (GL_TRIANGLES);
        for (unsigned int i = 0; i < T.size (); i++)
            for (unsigned int j = 0; j < 3; j++) {
                const MeshVertex & v = V[T[i].v[j]];
                Vec3 p = newPositions[ T[i].v[j] ];
                glNormal3f (v.n[0], v.n[1], v.n[2]);
                glVertex3f (p[0], p[1], p[2]);
            }
        glEnd ();
    }
};



#endif
