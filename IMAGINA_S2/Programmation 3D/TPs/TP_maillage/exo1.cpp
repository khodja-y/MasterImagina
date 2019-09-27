///////////////////////////////////////////////////////////////////////////////
// Imagina
// ----------------------------------------------------------------------------
// IN - Synth�se d'images - Mod�lisation g�om�trique
// Auteur : Gilles Gesqui�re
// ----------------------------------------------------------------------------
// Base du TP 1
// programme permettant de cr�er des formes de bases.
// La forme repr�sent�e ici est un polygone blanc dessin� sur un fond rouge
///////////////////////////////////////////////////////////////////////////////  
#include <GL/glut.h>
#include <stdio.h>      
#include <stdlib.h>     
#include <math.h>
#include "include/Point.h"
#include "include/Vector.h"
#include "include/tga.h"
#include "src/Point.cpp"
#include "src/Vector.cpp"
#include "src/tga.cpp"
#include <fstream>
#include <iostream>


/* Dans les salles de TP, vous avez g�n�ralement acc�s aux glut dans C:\Dev. Si ce n'est pas le cas, t�l�chargez les .h .lib ...
Vous pouvez ensuite y faire r�f�rence en sp�cifiant le chemin dans visual. Vous utiliserez alors #include <glut.h>.
Si vous mettez glut dans le r�pertoire courant, on aura alors #include "glut.h"
*/

// D�finition de la taille de la fen�tre
#define WIDTH  480

#define HEIGHT 480

// D�finition de la couleur de la fen�tre
#define RED   1
#define GREEN 1
#define BLUE  1
#define ALPHA 1


// Touche echap (Esc) permet de sortir du programme
#define KEY_ESC 27
#define KEY_UP 101
#define KEY_DOWN 103
#define KEY_I 73
#define KEY_K 75
#define KEY_RIGHT 102
#define KEY_LEFT 100
#define KEY_Q 113 //81 113
#define KEY_D 100 //68 100
#define KEY_A 97 //65 97
#define KEY_Z 122 //90 122
#define KEY_E 101 // 69 101
#define KEY_R 114 //82 114
#define KEY_T 116 // 84 116
#define KEY_Y 89 //121 89
#define KEY_U 121 // 117 121
#define KEY_O 111
#define KEY_P 112


long meridien = 8, angle = 0, parallele = 8, angle2 = 0, angle3 = 0, zoom = 0.9, arriere = 0;
long eyex = 0, eyey = 0, eyez = 0, camx = 0, camy = 0, camz = -1, upx = 0, upy = 1, upz = 0;


// Ent�tes de fonctions
void init_scene();
void render_scene();
GLvoid initGL();
GLvoid window_display();
GLvoid window_reshape(GLsizei width, GLsizei height);
GLvoid window_key(unsigned char key, int x, int y);
GLvoid window_special_key(int key, int x, int y);


int main(int argc, char **argv)
{
  // initialisation  des param�tres de GLUT en fonction
  // des arguments sur la ligne de commande
  glutInit(&argc, argv);
  glutInitDisplayMode(GLUT_RGB);

  // d�finition et cr�ation de la fen�tre graphique, ainsi que son titre
  glutInitWindowSize(WIDTH, HEIGHT);
  glutInitWindowPosition(0, 0);
  glutCreateWindow("Premier exemple : carr�");

  // initialisation de OpenGL et de la sc�ne
  initGL();
  init_scene();

  // choix des proc�dures de callback pour
  // le trac� graphique
  glutDisplayFunc(&window_display);
  // le redimensionnement de la fen�tre
  glutReshapeFunc(&window_reshape);
  // la gestion des �v�nements clavier
  glutKeyboardFunc(&window_key);

  glutSpecialFunc(&window_special_key);

  // la boucle prinicipale de gestion des �v�nements utilisateur
  glutMainLoop();

  return 1;
}

// initialisation du fond de la fen�tre graphique : noir opaque
GLvoid initGL()
{
  glClearColor(RED, GREEN, BLUE, ALPHA);
  glEnable(GL_DEPTH_TEST);
  //glEnable(GL_CULL_FACE);
}

// Initialisation de la scene. Peut servir � stocker des variables de votre programme
// � initialiser
void init_scene()
{
}

// fonction de call-back pour l�affichage dans la fen�tre

GLvoid window_display()
{
  glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
  glLoadIdentity();

  // C'est l'endroit o� l'on peut dessiner. On peut aussi faire appel
  // � une fonction (render_scene() ici) qui contient les informations
  // que l'on veut dessiner
  render_scene();

  // trace la sc�ne grapnique qui vient juste d'�tre d�finie
  glFlush();
}

// fonction de call-back pour le redimensionnement de la fen�tre

GLvoid window_reshape(GLsizei width, GLsizei height)
{
  glViewport(0, 0, width, height);

  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();
  // ici, vous verrez pendant le cours sur les projections qu'en modifiant les valeurs, il est
  // possible de changer la taille de l'objet dans la fen�tre. Augmentez ces valeurs si l'objet est
  // de trop grosse taille par rapport � la fen�tre.
  glOrtho(-20.0, 20.0, -20.0, 20.0, -20.0, 20.0);

  // toutes les transformations suivantes s�appliquent au mod�le de vue
  glMatrixMode(GL_MODELVIEW);


}

// fonction de call-back pour la gestion des �v�nements clavier

GLvoid window_key(unsigned char key, int x, int y)
{
  switch (key) {
  case KEY_ESC:
    exit(1);
    break;

  case KEY_I:
    angle3++;
    break;
  case KEY_K:
    angle3--;
    break;
  case KEY_Q:
    zoom ++;
    break;
  case KEY_D:
    zoom --;
    break; 
  case KEY_A:
    eyex++;
    break;
  case KEY_Z:
    eyey++;
    break;
  case KEY_E:
    eyez++;
    break;
  case KEY_R:
    camx++;
    break;      
  case KEY_T:
    camy++;
    break;
  case KEY_Y:
    camz++;
    break;  
  case KEY_U:
    upx++;
    break; 
  case KEY_O:
    upy++;
    break; 
  case KEY_P:
    upz++;
    break;     
  default:
    printf ("La touche %d n�est pas active.\n", key);
    break;
  }

  glutPostRedisplay();
}

GLvoid window_special_key(int key, int x, int y){
  switch (key)
  {
    case KEY_UP:
      angle++;
      break;
    case KEY_DOWN:
      angle--;
      break;
    case KEY_RIGHT:
      angle2++;
      break;
    case KEY_LEFT:
      angle2--;
      break;

    default:
      break;
  }

  glutPostRedisplay();
}

void drawPoint(Point point) {
    glBegin(GL_POINTS);
    glColor3f(1, 1, 1);
    glVertex3d(point.x, point.y, point.z);
    glEnd();
}

void drawLine(Point a, Point b){

    glBegin(GL_LINES);
    glColor3f(0.0, 0.5, 0.5);
    glVertex3d(a.x, a.y, a.z);
    glVertex3d(b.x, b.y, b.z);
    glEnd();
}

void drawLine(Point point,  Vector vector){
    glColor3b(0.0, 0, 1);
    Point b;
    b = Point(point.x + vector.x, point.y + vector.y, point.z + vector.z);
    drawLine(point, b);
}

void drawCurve(Point* tabPointsOfCurve, long nbPoints){
    glBegin(GL_LINE_STRIP);
    glColor3b(0.0, 0, 1);
    for(int i=0; i<nbPoints;i++){
      glVertex3f(tabPointsOfCurve[i].x, tabPointsOfCurve[i].y, tabPointsOfCurve[i].z);
    }
    glEnd();
}

double f1(double u){
  return 2*pow(u,3) - 3*pow(u,2) + 1;
}

double f2(double u){
  return -1*2*pow(u,3) + 3*pow(u,2);
}

double f3(double u){
  return pow(u,3) - 2*pow(u,2) + u;
}

double f4(double u){
  return pow(u,3) - pow(u,2);
}

Point HermiteCubicCurve(Point &P0, Point &P1, Vector V0, Vector V1, double nbU){

  double u = nbU;
  Point resultat;

  double x = (f1(u)*P0.x + f2(u)*P1.x + f3(u)*V0.x + f4(u)*V1.x);
  double y = (f1(u)*P0.y + f2(u)*P1.y + f3(u)*V0.y + f4(u)*V1.y);
  double z = (f1(u)*P0.z + f2(u)*P1.z + f3(u)*V0.z + f4(u)*V1.z);


  resultat = Point(x, y, z);


   return resultat;

}

double factorielle(double n){
  int i; /*compteur de boucle*/
  int f = 0;
  if(n==0)
  {
    return 1 ;
  }else{
    f = n * factorielle(n-1);
    return f;
  }
}

double puissance(double x, double n){

  if(x==0){
        return 1;
  }else{
        double r =1;
        for(int i=0; i<n; i++){
                r *= x;
        }
        return r;
  }

}

double bernstein(double u, long n, long i){
  return ((factorielle(n)/(factorielle(i)*factorielle(n-i)))*pow(u,i)*pow(1-u,n-i));

}



void bezierCurveByBernstein(Point* tabControlPoint, long nbControlPoint, double nbU, Point* resultat){
  Point res;
  double b, x = 0, y = 0, z = 0;

  for(int l=0; l<nbU; l++){

    double u = l*1./(double)(nbU-1);
    x = 0;
    y = 0;
    z = 0;
    Point res;

    for(int i=0; i<nbControlPoint; i++){

      b = bernstein(u, nbControlPoint-1, i);
      x += b * tabControlPoint[i].x;
      y += b * tabControlPoint[i].y;
      z += b * tabControlPoint[i].z;
    }

    res = Point(x, y, z);

    resultat[l] = Point(res);
  }

}

void bezierCurveByCasteljau(Point* tabControlPoint, long nbControlPoint, long nbU, Point* resultat){
  Point res;
  Point* nvControlPoint = new Point[nbControlPoint];
  double x = 0, y = 0, z = 0;


  for(int l; l<nbU; l++){

    double u = l*1./(double)(nbU-1);

    for(int i=0; i<nbControlPoint; i++){
      nvControlPoint[i] = tabControlPoint[i];
    }


    long nbNvPoint = nbControlPoint-1;

    for(int i=0; i<nbControlPoint;i++){
      for(int j=0; j<nbNvPoint;j++){
        x = (1-u)*nvControlPoint[j].x + u*nvControlPoint[j+1].x;
        y = (1-u)*nvControlPoint[j].y + u*nvControlPoint[j+1].y;
        z = (1-u)*nvControlPoint[j].z + u*nvControlPoint[j+1].z;
        res = Point(x,y,z);
        nvControlPoint[j] = res;
      }

      nbNvPoint--;

    }

    resultat[l] = res;


  }

  delete[] nvControlPoint;
}


void draw(){
    using namespace std;

    int sommets, aretes, faces;
    char file[1000];
    GLfloat x, y, z;
    int m = 0;
    
    ifstream inFile;
    
    inFile.open("./maillages/triceratops.off");
    if (!inFile) {
        cout << "Unable to open file";
        exit(1); // terminate with error
    }
    if (inFile >> file) {
        inFile >> sommets >> faces >> aretes;
        Point* points = new Point[sommets];
        float coordx[sommets], coordy[sommets], coordz[sommets];
        GLubyte indices[faces*3];
        
        for (int i = 0; i < sommets; ++i) {
            inFile >> x >> y >> z;
            coordx[i] = x;
            coordy[i] = y;
            coordz[i] = z;
            Point p;
            p = Point(x,y,z);
            points[i] = p;
        }
        int nbrSommets, indice1, indice2, indice3, l = 0;
        float minx, maxx, miny, maxy, minz, maxz;
        minx = min(coordx, sommets);
        maxx = max(coordx, sommets);
        miny = min(coordy, sommets);
        maxy = max(coordy, sommets);
        minz = min(coordz, sommets);
        maxz = max(coordz, sommets);
        for (int j = 0; j < faces; ++j) {
            inFile >> nbrSommets >> indice1 >> indice2 >> indice3;
            indices[l] = indice1;
            indices[l+1] = indice2;
            indices[l+2] = indice3;
            l += 3;
            glColor3f(0.0f, 0.0f, 0.5f);
            glBegin(GL_TRIANGLES);
            gluLookAt(-3, 0, -2, 0, 1, 0, 0, 1, 0);
            glVertex3d(points[indice1].x,points[indice1].y,points[indice1].z);
            glVertex3d(points[indice2].x,points[indice2].y,points[indice2].z);
            glVertex3d(points[indice3].x,points[indice3].y,points[indice3].z);
            glEnd();
            
        }
        glColor3f(0.0f, 0.0f, 0.5f);
        
        
         

    }
   

    inFile.close();

}

float min(float tab[], int size){

  float min = tab[0];
  for(int i = 1, i<size; i++){
      if(tab[i]<min){
        min = tab[i];
      }
  }

  return min;
}

float max(float tab[], int size){
  
  float max = tab[0];
  for(int i = 1, i<size; i++){
      if(tab[i]>max){
        max = tab[i];
      }
  }

  return min;
}

void draw2(){
  using namespace std;
    int sommets, aretes, faces;
    char file[1000];
    float x, y, z;
    int m = 0;
    
    ifstream inFile;
    
    inFile.open("./maillages/triceratops.off");
    if (!inFile) {
        cout << "Unable to open file";
        exit(1); // terminate with error
    }
    if (inFile >> file) {
        inFile >> sommets >> faces >> aretes;
        float points[sommets*3];
        //Point* points = new Point[sommets];
        GLubyte indices[faces*3];
        for (int i = 0; i < sommets; i++) {
            inFile >> x >> y >> z;
            points[m] = x;
            points[m+1] = y;
            points[m+2] = z;
            m += 3;
            
        }
        int nbrSommets, l = 0;
        long indice1, indice2, indice3;
        for (int j = 0; j < faces; j++) {
            inFile >> nbrSommets >> indice1 >> indice2 >> indice3;
            /*indices[l] = indice1;
            indices[l+1] = indice1 + 1;
            indices[l+2] = indice1 + 2;
            indices[l+3] = indice2;
            indices[l+4] = indice2 + 1;
            indices[l+5] = indice2 + 2;
            indices[l+6] = indice3;
            indices[l+7] = indice3 + 1;
            indices[l+8] = indice3 + 2;
            l += 9;*/
            indices[l] = indice1;
            indices[l+1] = indice2;
            indices[l+2] = indice3;
            l+=3;

            
            
            
        }
        glColor3f(0.0f, 0.0f, 0.5f);
        
         
        gluLookAt(3, 5, -2, 0, 0, -1, 0, 1, 0);
        glEnableClientState(GL_VERTEX_ARRAY);
        glVertexPointer(3, GL_FLOAT, 0, points);
        glPushMatrix();
        glTranslatef(-2, -2, 0); 
        glDrawElements(GL_TRIANGLES, faces*3, GL_UNSIGNED_BYTE, indices);
        glDisableClientState(GL_VERTEX_ARRAY);

    }
   

    inFile.close();
}



//////////////////////////////////////////////////////////////////////////////////////////
// Fonction que vous allez modifier afin de dessiner
/////////////////////////////////////////////////////////////////////////////////////////
void render_scene(){
    using namespace std;
    //glEnable(GL_LIGHTING);
    //glEnable(GL_LIGHT0);
    
    glRotated(angle, 1, 0, 0);
    glRotated(angle2, 0, 0, 1);
    glRotated(angle3, 0, 1, 0);
    glScaled(zoom, zoom, zoom);
    
    draw2();

}


