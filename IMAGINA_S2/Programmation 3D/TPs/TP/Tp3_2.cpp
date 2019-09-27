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

#include <stdio.h>      
#include <stdlib.h>     
#include <math.h>
#include "include/Point.h"
#include "include/Vector.h"
#include "src/Point.cpp"
#include "src/Vector.cpp"

/* Dans les salles de TP, vous avez g�n�ralement acc�s aux glut dans C:\Dev. Si ce n'est pas le cas, t�l�chargez les .h .lib ...
Vous pouvez ensuite y faire r�f�rence en sp�cifiant le chemin dans visual. Vous utiliserez alors #include <glut.h>. 
Si vous mettez glut dans le r�pertoire courant, on aura alors #include "glut.h" 
*/

#include <GL/glut.h> 

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


// Ent�tes de fonctions
void init_scene();
void render_scene();
GLvoid initGL();
GLvoid window_display();
GLvoid window_reshape(GLsizei width, GLsizei height); 
GLvoid window_key(unsigned char key, int x, int y); 


int main(int argc, char **argv) 
{  
  // initialisation  des param�tres de GLUT en fonction
  // des arguments sur la ligne de commande
  glutInit(&argc, argv);
  glutInitDisplayMode(GLUT_RGBA);

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

  // la boucle prinicipale de gestion des �v�nements utilisateur
  glutMainLoop();  

  return 1;
}

// initialisation du fond de la fen�tre graphique : noir opaque
GLvoid initGL() 
{
  glClearColor(RED, GREEN, BLUE, ALPHA);        
}

// Initialisation de la scene. Peut servir � stocker des variables de votre programme
// � initialiser
void init_scene()
{
}

// fonction de call-back pour l�affichage dans la fen�tre

GLvoid window_display()
{
  glClear(GL_COLOR_BUFFER_BIT);
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
  glOrtho(-2.0, 2.0, -2.0, 2.0, -2.0, 2.0);

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
    
  default:
    printf ("La touche %d n�est pas active.\n", key);
    break;
  }     
}

void drawPoint(Point point) {
    glBegin(GL_POINTS);
    glColor3f(1, 1, 1);
    glVertex3d(point.getX(), point.getY(), point.getZ());
    glEnd();
}

void drawLine(Point a, Point b){

    glBegin(GL_LINES);
    glColor3f(0.0, 0.5, 0.5);
    glVertex3d(a.getX(), a.getY(), a.getZ());
    glVertex3d(b.getX(), b.getY(), b.getZ());
    glEnd();
}

void drawLine(Point point,  Vector vector){
    Point b;
    b = Point(point.getX() + vector.getX(), point.getY() + vector.getY(), point.getZ() + vector.getZ());
    drawLine(point, b);
}

void drawCurve(Point* tabPointsOfCurve, long nbPoints){
    glBegin(GL_LINE_STRIP);
    glColor3b(0.0, 0, 1);
    for(int i=0; i<nbPoints;i++){
      glVertex3f(tabPointsOfCurve[i].getX(), tabPointsOfCurve[i].getY(), tabPointsOfCurve[i].getZ());
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

  double x = (f1(u)*P0.getX() + f2(u)*P1.getX() + f3(u)*V0.getX() + f4(u)*V1.getX());
  double y = (f1(u)*P0.getY() + f2(u)*P1.getY() + f3(u)*V0.getY() + f4(u)*V1.getY());
  double z = (f1(u)*P0.getZ() + f2(u)*P1.getZ() + f3(u)*V0.getZ() + f4(u)*V1.getZ());


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
      x += b * tabControlPoint[i].getX();
      y += b * tabControlPoint[i].getY();
      z += b * tabControlPoint[i].getZ();
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
        x = (1-u)*nvControlPoint[j].getX() + u*nvControlPoint[j+1].getX();
        y = (1-u)*nvControlPoint[j].getY() + u*nvControlPoint[j+1].getY();
        z = (1-u)*nvControlPoint[j].getZ() + u*nvControlPoint[j+1].getZ();
        res = Point(x,y,z);
        nvControlPoint[j] = res;
      }
      
      nbNvPoint--;

    }

    resultat[l] = res;

    
  }

  delete[] nvControlPoint;
}


void surfaceCylindrique(Point* pointControlBezier, Point* poinControlBezier2, long nbControlPoint, long nbControlPoint2, long nbU, long nbV, Point* resultat){

  double x, y , z;
  Point pu, p;
  double v;
  Vector n;
  Point* nvPoint = new Point[nbU*nbV];
  Point* c1 = new Point[nbU];
  Point* c2 = new Point[nbU];

  bezierCurveByBernstein(pointControlBezier, nbControlPoint, nbU, c1);
  drawCurve(c1,nbU);
  bezierCurveByBernstein(poinControlBezier2, nbControlPoint2, nbU, c2);
  drawCurve(c2,nbU);

  for(int i=0;i<nbU;i++){

      for(int j=0;j<nbV;j++){

          v = j*1./(double)(nbV-1);

          x =  (1-v)*c1[i].getX() + v*(c2[i].getX());
          y =  (1-v)*c1[i].getY() + v*(c2[i].getY());
          z =  (1-v)*c1[i].getZ() + v*(c2[i].getZ());

          p = Point(x,y,z);

          nvPoint[j] = p;
      }

      drawCurve(nvPoint,nbV);
      
  }


  
    
}


//////////////////////////////////////////////////////////////////////////////////////////
// Fonction que vous allez modifier afin de dessiner
/////////////////////////////////////////////////////////////////////////////////////////
void render_scene()
{
  

  long nbControlPoint = 5, nbControlPoint2 = 4;
  long nbU = 20, nbV = 30;
  Point* tab = new Point[nbV*nbU];
  Point* tab2 = new Point[nbV*nbU];
  Point a,b,c,d,e,f,g,h,i,j;


  a = Point(-1.5, -1.5, 0);
  b = Point(-1.8, -1, 0);
  c = Point(-2, 0, 0);
  d = Point(0, 1, 0);
  e = Point(1, 1.5, 0);
  
  Point* tabControlPoint = new Point[nbControlPoint];

  tabControlPoint[0] = a;
  tabControlPoint[1] = b;
  tabControlPoint[2] = c;
  tabControlPoint[3] = d;
  tabControlPoint[4] = e;

  g = Point(1, -1.5, 0);
  h = Point(1.8, -1, 0);
  i = Point(2, 0, 0);
  j = Point(1, 1, 0);
  Point* tabControlPoint2 = new Point[nbControlPoint2];

  tabControlPoint2[0] = g;
  tabControlPoint2[1] = h;
  tabControlPoint2[2] = i;
  tabControlPoint2[3] = e;

  f = Point(0, -2 , 0);

  /*bezierCurveByBernstein(tabControlPoint, nbControlPoint, nbU, tab);
  drawLine(a,f);
  drawCurve(tab,nbU);*/
  
  surfaceCylindrique(tabControlPoint, tabControlPoint2, nbControlPoint, nbControlPoint2, nbU, nbV, tab);

  //for(int i=0; i<nbU; i++) printf("%f %f %f \n", tab[i].getX(), tab[i].getY(), tab[i].getZ()); 


  //drawCurve(tab,nbU);
  drawPoint(a);
  drawPoint(b);
  drawPoint(c);
  drawPoint(d);
  drawPoint(e);
  drawLine(a,b);
  drawLine(b,c);
  drawLine(c,d);
  drawLine(d,e);

  delete[] tab;
  delete[] tabControlPoint;


}
