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
#include <iostream>
#include <fstream>
#include <string>
#include <cmath>



#include "include/Point.h"
#include "include/Vector.h"
#include "include/tga.h"
#include "src/Point.cpp"
#include "src/Vector.cpp"
#include "src/tga.cpp"




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


long meridien = 8, anglez = 0, parallele = 8, anglex = 0, angley = 0, zoom = 0.9, arriere = 0;
long eyex = 0, eyey = 0, eyez = 0, camx = 0, camy = 0, camz = -1, upx = 0, upy = 1, upz = 0;


// Ent�tes de fonctions
void init_scene();
void render_scene();
GLvoid initGL();
GLvoid window_display();
GLvoid window_reshape(GLsizei width, GLsizei height);
GLvoid window_key(unsigned char key, int x, int y);
GLvoid window_special_key(int key, int x, int y);


using namespace std;


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
    anglez++;
    break;
  case KEY_K:
    anglez--;
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
      anglex++;
      break;
    case KEY_DOWN:
      anglex--;
      break;
    case KEY_RIGHT:
      angley++;
      break;
    case KEY_LEFT:
      angley--;
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
      glVertex3f(tabPointsOfCurve[i].getX(), tabPointsOfCurve[i].y, tabPointsOfCurve[i].z);
    }
    glEnd();
}



void normcrossprod(float v1[3], float v2[3], float out[3])
{
	GLint i, j;
	GLfloat length;

	out[0] = v1[1] * v2[2] - v1[2] * v2[1];
	out[1] = v1[2] * v2[0] - v1[0] * v2[2];
	out[2] = v1[0] * v2[1] - v1[1] * v2[0];
	//normalize(out); 
}

void renderMaillage(GLfloat coordinates[], GLfloat all_normal[], int indices[], int nbTriangles) {

	glEnable(GL_COLOR_MATERIAL);
	int MatSpec[4] = { 0,0,0,0 };
	glMaterialiv(GL_FRONT_AND_BACK, GL_SPECULAR, MatSpec);
	glMateriali(GL_FRONT_AND_BACK, GL_SHININESS, 128);


	glEnableClientState(GL_VERTEX_ARRAY);
	glVertexPointer(3, GL_FLOAT, 0, coordinates);
	glEnableClientState(GL_NORMAL_ARRAY);
	glNormalPointer(GL_FLOAT, 0, all_normal);
	glDrawElements(GL_TRIANGLES, 3 * nbTriangles, GL_UNSIGNED_INT, indices);
	glDisableClientState(GL_VERTEX_ARRAY);
	glDisableClientState(GL_NORMAL_ARRAY);
}

Point* readMaillage(string path){
  int sommets, aretes, faces;
  char file[1000];
  float x, y, z;
  Point* triangles;
  ifstream inFile;
    
    inFile.open(path);

    if (!inFile) {
        cout << "Unable to open file";
        exit(1); // terminate with error
    }
    if (inFile >> file) {
        inFile >> sommets >> faces >> aretes;
        Point points[sommets];
        GLubyte indices[faces*3];
        for (int i = 0; i < sommets; ++i) {
            inFile >> x >> y >> z;
            Point point;
            point = Point(x, y, z);
            points[i] = point;
        }

        triangles = new Point[faces*3];

        int nbrSommets, indice1, indice2, indice3, l = 0, k = 0;

        for (int j = 0; j < faces; ++j) {
            inFile >> nbrSommets >> indice1 >> indice2 >> indice3;
            indices[l] = indice1;
            indices[l+1] = indice2;
            indices[l+2] = indice3;
            l += 3;

            triangles[k] = points[indice1];
            triangles[k+1] = points[indice2];
            triangles[k+2] = points[indice3];
            k += 3;


            /*glColor3f(0.0f, 0.0f, 0.5f);
            glBegin(GL_TRIANGLES);
            gluLookAt(-3, 0, -2, 0, 1, 0, 0, 1, 0);
            glVertex3d(points[indice1].x,points[indice1].y,points[indice1].z);
            glVertex3d(points[indice2].x,points[indice2].y,points[indice2].z);
            glVertex3d(points[indice3].x,points[indice3].y,points[indice3].z);
            glEnd();

            GLfloat points2[] = {
                    static_cast<GLfloat>(points[indice1].x),
                    static_cast<GLfloat>(points[indice1].y),
                    static_cast<GLfloat>(points[indice1].z),
                    static_cast<GLfloat>(points[indice2].x),
                    static_cast<GLfloat>(points[indice2].y),
                    static_cast<GLfloat>(points[indice2].z),
                    static_cast<GLfloat>(points[indice3].x),
                    static_cast<GLfloat>(points[indice3].y),
                    static_cast<GLfloat>(points[indice3].z)};
            GLubyte indices[] = {0, 1, 2};
            glEnableClientState(GL_VERTEX_ARRAY);
            glEnableClientState(GL_INDEX_ARRAY);
            glVertexPointer(3, GL_FLOAT, 0, points);
            glIndexPointer(GL_UNSIGNED_BYTE, 0, indices);
            glColor3f(0.4, 0.6, 0.5);
            glDrawElements(GL_TRIANGLES, 3, GL_UNSIGNED_BYTE, indices);*/
            
        }

        
        glColor3f(0.0f, 0.0f, 0.5f);
    }

    
    
    return triangles;
}





Point* raffinement(Point* triangle){
	Point* triangle2 = new Point[6];
	Point p;
	double x, y, z;
	int j = 0;

	for(int i=0; i<3; i++){
		triangle2[j] = triangle[i];
		j++;
	} 

	for(int i=0; i<3; i++){

		if(i==2){
			x = (triangle[0].x + triangle[i].x) / 2;
			y = (triangle[0].y + triangle[i].y) / 2;
			z = (triangle[0].z + triangle[i].z) / 2;
			p = Point(x,y,z);
			triangle2[j] = p;
			j++;
		}else{
			x = (triangle[i+1].x + triangle[i].x) / 2;
			y = (triangle[i+1].y + triangle[i].y) / 2;
			z = (triangle[i+1].z + triangle[i].z) / 2;
			p = Point(x,y,z);
			triangle2[j] = p;
			j++;
		}

		
	}

  

	return(triangle2);
}


//////////////////////////////////////////////////////////////////////////////////////////
// Fonction que vous allez modifier afin de dessiner
/////////////////////////////////////////////////////////////////////////////////////////
void render_scene(){

  glEnable(GL_DEPTH_TEST);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	//D�finition de la couleur

	int rayon = 5, hauteur = 10, angleMax = 90;
  Point* triangles = new Point[36];
	//gluLookAt(rayon, hauteur / 2 -2, rayon, 0, 0, 0, 0, 1, 0);
	glRotated(anglex, 1, 0, 0);
  glRotated(angley, 0, 0, 1);
  glRotated(anglez, 0, 1, 0);
	glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);

	triangles = readMaillage("cube.off");

  Point* triangle = new Point[3];
  Point* triangle2 = new Point[6];

  int c = 0;
  Point* trianglesR = new Point[24];

  for(int i=0; i<12; i+=3){
    int j = 0;
    triangle[j] = triangles[i];
    triangle[j+1] = triangles[i+1];
    triangle[j+2] = triangles[i+2];

    triangle2 = raffinement(triangle);

    for(int k=0; k<6; k++){
      trianglesR[c] = triangle2[k];
      c++;
    }
  }

  cout << c << endl;

  for(int i=0; i<36; i+=3){
            GLfloat points2[] = {
                    static_cast<GLfloat>(trianglesR[i].x),
                    static_cast<GLfloat>(trianglesR[i].y),
                    static_cast<GLfloat>(trianglesR[i].z),
                    static_cast<GLfloat>(trianglesR[i+1].x),
                    static_cast<GLfloat>(trianglesR[i+1].y),
                    static_cast<GLfloat>(trianglesR[i+1].z),
                    static_cast<GLfloat>(trianglesR[i+2].x),
                    static_cast<GLfloat>(trianglesR[i+2].y),
                    static_cast<GLfloat>(trianglesR[i+2].z),};
            
            GLubyte indices[] = {0, 1, 2};
            glEnableClientState(GL_VERTEX_ARRAY);
            glEnableClientState(GL_INDEX_ARRAY);
            glVertexPointer(3, GL_FLOAT, 0, points2);
            glIndexPointer(GL_UNSIGNED_BYTE, 0, indices);
            glColor3f(0.4, 0.6, 0.5);
            glDrawElements(GL_TRIANGLES, 3, GL_UNSIGNED_BYTE, indices);
            
  }
	
    

}


