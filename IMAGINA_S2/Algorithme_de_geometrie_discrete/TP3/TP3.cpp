#include <stdio.h>
#include <stdlib.h>
#include "src/vec.h"
#include "src/pgm_basic_io.h"
#include "src/pgm_basic_io.c"
#include <vector>

typedef vec2 point;

using namespace std;

#define allocation_tableau(nom, type, nombre) \
if( (nom = (type*) calloc (nombre, sizeof(type) ) ) == NULL ) \
{\
 printf("\n Allocation dynamique impossible pour un pointeur-tableau \n");\
 exit(1);\
}

vector<point> randomizedPoints(int nbrP){

    vector<point> points;
    point p;

    srand (time(NULL));

    for(int i =0; i<nbrP; i++){
        p.x = rand() % 512;
        p.y = rand() % 512;
        points.push_back(p);
    }

    return points;

}

int orientation(point r, point s, point t){

    int o = (( s.y - r.y) * ( t.x - s.x)) - (( s.x - r.x) * ( t.y - s.y));

    if(o==0) return 0; //colinéaire 
    return (o>0) ? 1 : 2; //1 sens de la montre (à gauche) 2 sens inverse (à droite)
}

bool concave(point r, point s, point t){

    long crossProduct = (( s.x - r.x) * ( t.y - r.y)) - (( s.y - r.y) * ( t.x - r.x));

    if(crossProduct==0) return false;
    else return true;
}

vector<point> tri(vector<point> points){

    int min;
    long x, y;

    for(int i=0; i<points.size()-2;i++){
        min = i;
        for(int j=i+1; j<points.size()-1;j++){
            if(points[j].x < points[min].x){
                if(points[j].y > points[min].y){
                    min = j;
                }
            } 
        }

        if(min!=i){
            x = points[min].x;
            y = points[min].y;
            points[min].x = points[i].x;
            points[min].y = points[i].y;
            points[i].x = x;
            points[i].y = y;
        }
    }

    return points;
}

/*vector<point> algorithmeGraham(vector<point> points){

}*/

int main(int argc, const char* argv[]){

    FILE* fichier;
    int ret = -1;
    unsigned char* img = NULL;
    int taille = 1024*1024;
    vector<point> points;
    int nbrP;
    long z = 0;


    allocation_tableau(img, unsigned char, taille);

    if(argc<3){
        printf("erreur: nomFichier");
    }else{

        fichier = fopen(argv[1],"w");
        sscanf (argv[2],"%d",&nbrP);

        fprintf(fichier,"ply\n");
        fprintf(fichier,"format ascii 1.0\n");
        fprintf(fichier,"element vertex %d\n",nbrP);
        fprintf(fichier,"property float x\n");
        fprintf(fichier,"property float y\n");
        fprintf(fichier,"property float z\n");
        fprintf(fichier,"element edge %d\n",nbrP);
        fprintf(fichier,"property int vertex1\n");
        fprintf(fichier,"property int vertex2\n");
        fprintf(fichier,"end_header\n");


        if(fichier!=NULL){

            points = randomizedPoints(nbrP);
            points = tri(points);

            for(int i = 0; i < nbrP; i++)
            {
                fprintf(fichier,"%ld %ld %ld\n",points[i].x,points[i].y,z);
                cout << points[i] << endl;
            }

            for(int i = 0; i < nbrP-1; i++)
            {
                fprintf(fichier,"%d %d\n",i,i+1);
            }
            
            fprintf(fichier,"%d %d\n",nbrP-1,0);

        }
    }

    



    return ret;
}

