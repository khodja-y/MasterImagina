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
#define GREEN 0
#define BLUE  0
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
    glColor3b(0.0, 1.0, 1.0);
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
  return ((factorielle(n)/(factorielle(i)*factorielle(n-i)))*puissance(u,i)*puissance(1-u,n-i));

}



Point bezierCurveByBernstein(Point tabControlPoint[], long nbControlPoint, double u){
  Point resultat;
  double b, x = 0, y = 0, z = 0;

  for(int i=0; i<nbControlPoint; i++){
    b = bernstein(u, nbControlPoint-1,i);
    x += b * tabControlPoint[i].getX();
    y += b * tabControlPoint[i].getY();
    z += b * tabControlPoint[i].getZ();
  }

  resultat = Point(x, y, z);


  return resultat;
}

void bezierCurveByCasteljau(Point tabControlPoint[], long nbControlPoint, long nbU, Point* resultat){
  Point res;
  Point nvControlPoint[nbControlPoint];
  double x = 0, y = 0, z = 0;


  for(int l; l<nbU; l++){
    
    double u = l*1./(double)(nbU-1);
    
    for(int i=0; i<nbControlPoint; i++){
      nvControlPoint[i] = tabControlPoint[i];
    }


    long nbNvPoint = nbControlPoint - 1;

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
}





//////////////////////////////////////////////////////////////////////////////////////////
// Fonction que vous allez modifier afin de dessiner
/////////////////////////////////////////////////////////////////////////////////////////
void render_scene()
{


  Point p;
  
  
  long nbControlPoint = 4;
  long nbU = 20;
  Point* tab = new Point[nbU];
  Point a,b,c,d,e;



  /*a = Point(-1.5, -1.5, 0);
  b = Point(-1.8, -1, 0);
  c = Point(-1, 0, 0);
  d = Point(0, 1, 0);
  e = Point(1, 0.5, 0);
  Point tabControlPoint[5] = {a,b,c,d,e};
  //printf("point control %f %f %f \n", tabControlPoint[0].getX(), tabControlPoint[0].getY() , tabControlPoint[0].getZ());
  
  bezierCurveByCasteljau(tabControlPoint, nbControlPoint, nbU, tab);
  //printf("point curve %f %f %f \n", tab[0].getX(), tab[0].getY() , tab[0].getZ());
    
  drawCurve(tab,nbU);
  drawPoint(a);
  drawPoint(b);
  drawPoint(c);
  drawPoint(d);
  drawPoint(e);
  drawLine(a,b);
  drawLine(b,c);
  drawLine(c,d);

  
  //delete [] tab;*/
  
  
  //bernstein
  double u;
  a = Point(1.5, 1.5, 0);
  b = Point(1.8, 1, 0);
  c = Point(1, 1, 0);
  d = Point(0, 1, 0);
  Point tabControlPoint2[4] = {a,b,c,d};

  for(int i =0; i<nbU; i++){
    u = i*1./(double)(nbU-1);
    p = bezierCurveByBernstein(tabControlPoint2, nbControlPoint, u);
    
    tab[i] = Point(p);
    printf("%f %f %f %f\n", tab[i].getX(), tab[i].getY() , tab[i].getZ(), u);
  }
  tab[0]=tabControlPoint2[0];
  tab[nbU-1]=tabControlPoint2[nbControlPoint-1];
  drawCurve(tab,nbU);
  drawPoint(a);
  drawPoint(b);
  drawPoint(c);
  drawPoint(d);
  drawLine(a,b);
  drawLine(b,c);
  drawLine(c,d);
  


 //exercice 1 td 2 courbe d'hermite
  /*Point P0, P1, resultat;
  Vector V0, V1;
  
  int nbU = 100;
  Point tab[nbU];

  P0 = Point(0 , 0, 0);
  P1 = Point(2, 0, 0);
  V0 = Vector(1, 1, 0);
  V1 = Vector(1, -1, 0);

  int j = 0;

  for(int i =0; i<nbU; i++){
    float u = i*1./(float)(nbU-1);
    printf("%f\n",u);
    Point p; 
    p = HermiteCubicCurve(P0, P1, V0, V1, u);
    
    tab[i] = Point(p);

  }

  drawCurve(tab,nbU);
  */


  //Dessein de courbe
  /*Point a,b,c;
    a = Point(0.5, 0.5, 0);
    b = Point(1, 1, 0);
    c = Point(-1, 1, 0);
    Point tab[3] = {a,b,c};
    drawCurve(tab,3);*/

//D�finition de la couleur
//projection d'un point sur un autre
 /*glColor3f(1.0, 1.0, 1.0);

 Point a,b,c;
    a = Point(0.5, 0.5, 0);
    b = Point(1, 1, 0);
    c = Point(-1, 1, 0);
    drawLine(a, b);
    drawPoint(c);
    Point projectC;
    projectC = c.projectOnLine(a, b);
    
  drawPoint(projectC);
  drawLine(c, projectC);
  */

  //  Nous cr�ons ici un polygone. Nous pourrions aussi cr�er un triangle ou des lignes. Voir ci-dessous les parties 
  // en commentaires (il faut commenter le bloc qui ne vous int�resse pas et d�commenter celui que vous voulez tester.

   // Cr�ation de deux lignes
	/*glBegin(GL_LINES);
		glVertex3f(-1, -1, 0);
		glVertex3f(1, 1, 0);
		glVertex3f(1, -1, 0);
		glVertex3f(-1, 1, 0); 
	glEnd();
  */
  
 // cr�ation d'un polygone
/*	glBegin(GL_POLYGON);
		glVertex3f(-1, -1, 0);
		glVertex3f(1, -1, 0);
		glVertex3f(1, 1, 0);
		glVertex3f(-1, 1, 0);
	glEnd();
*/


/*
// cr�ation d'un triangle
	glBegin(GL_TRIANGLES);
		glVertex3f(-1, -1, 0);
		glVertex3f(1, -1, 0);
		glVertex3f(1, 1, 0);
	glEnd();
*/



}
