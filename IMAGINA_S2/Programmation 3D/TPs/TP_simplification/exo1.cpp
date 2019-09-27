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

/*void drawPoint(Point point) {
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
}*/



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

	// Cr�er un tableau de normal et utiliser "glNormalPointer". Se baser sur le syst�me des vertex.
	// https://www.opengl.org/discussion_boards/showthread.php/130241-using-glNormalPointer

	glEnableClientState(GL_VERTEX_ARRAY);
	glVertexPointer(3, GL_FLOAT, 0, coordinates);
	glEnableClientState(GL_NORMAL_ARRAY);
	glNormalPointer(GL_FLOAT, 0, all_normal);
	glDrawElements(GL_TRIANGLES, 3 * nbTriangles, GL_UNSIGNED_INT, indices);
	glDisableClientState(GL_VERTEX_ARRAY);
	glDisableClientState(GL_NORMAL_ARRAY);
}


void fusePoint(std::string path, int pt1, int pt2) {
	GLfloat* coordinates;
	GLfloat* coordinatesTemp;
	GLfloat* all_normal;
	GLfloat* all_normalTemp;

	int* indices;
	int* indicesTemp;
	int nbPoints, nbTriangles;
	int nbTrianglesTemp;
	float x_min, x_max, y_min, y_max, z_min, z_max;


	ifstream fichier(path, ios::in);  // on ouvre le fichier en lecture


	std::string t;
	fichier >> t;
	fichier >> nbPoints;
	fichier >> nbTriangles;
	float temp; fichier >> temp;
	coordinatesTemp = new GLfloat[nbPoints * 3];
	coordinates = new GLfloat[(nbPoints - 1) * 3];
	all_normalTemp = new GLfloat[nbTriangles * 3];
	indicesTemp = new int[nbTriangles * 3];

	int iReal = 0;
	for (int i = 0; i < nbPoints; i++) {
		fichier >> coordinatesTemp[3 * i];
		fichier >> coordinatesTemp[3 * i + 1];
		fichier >> coordinatesTemp[3 * i + 2];
		if (i != pt1 && i != pt2) {
			coordinates[3 * iReal] = coordinatesTemp[3 * i];
			coordinates[3 * iReal + 1] = coordinatesTemp[3 * i + 1];
			coordinates[3 * iReal + 2] = coordinatesTemp[3 * i + 2];
			iReal++;
		}
	}
	Point p1 = Point(coordinatesTemp[3 * pt1], coordinatesTemp[3 * pt1 + 1], coordinatesTemp[3 * pt1 + 2]);
	Point p2 = Point(coordinatesTemp[3 * pt2], coordinatesTemp[3 * pt2 + 1], coordinatesTemp[3 * pt2 + 2]);

	Point p3 = Point((p1.getX() + p2.getX()) / 2, (p1.getY() + p2.getY()) / 2, (p1.getZ() + p2.getZ()) / 2);

	coordinates[3 * iReal] = p3.getX();
	coordinates[3 * iReal + 1] = p3.getY();
	coordinates[3 * iReal + 2] = p3.getZ();

	iReal = 0;
	for (int i = 0; i < nbTriangles; i++) {
		float temp2; fichier >> temp2;
		fichier >> indicesTemp[3 * i];
		fichier >> indicesTemp[3 * i + 1];
		fichier >> indicesTemp[3 * i + 2];
		if (indicesTemp[3 * i] == pt1 && indicesTemp[3 * i + 1] == pt2 || indicesTemp[3 * i] == pt2 && indicesTemp[3 * i + 1] == pt1 ||
			indicesTemp[3 * i] == pt1 && indicesTemp[3 * i + 2] == pt2 || indicesTemp[3 * i] == pt2 && indicesTemp[3 * i + 2] == pt1 ||
			indicesTemp[3 * i + 1] == pt1 && indicesTemp[3 * i + 2] == pt2 || indicesTemp[3 * i + 1] == pt2 && indicesTemp[3 * i + 2] == pt1) {
				//Flemme de trouver la n�gation
		}
		else {
			iReal++;
		}
	}
	indices = new int[iReal * 3];
	all_normal = new GLfloat[iReal * 3];
	iReal = 0;
	for (int i = 0; i < nbTriangles; i++) {
		if (indicesTemp[3 * i] == pt1 && indicesTemp[3 * i + 1] == pt2 || indicesTemp[3 * i] == pt2 && indicesTemp[3 * i + 1] == pt1 ||
			indicesTemp[3 * i] == pt1 && indicesTemp[3 * i + 2] == pt2 || indicesTemp[3 * i] == pt2 && indicesTemp[3 * i + 2] == pt1 ||
			indicesTemp[3 * i + 1] == pt1 && indicesTemp[3 * i + 2] == pt2 || indicesTemp[3 * i + 1] == pt2 && indicesTemp[3 * i + 2] == pt1) {
			//Flemme de trouver la n�gation
		}
		else {
			int offset = 0;
			if (indicesTemp[3 * i] > pt1)
				offset++;
			if (indicesTemp[3 * i] > pt2)
				offset++;
			if (indicesTemp[3 * i] == pt1 || indicesTemp[3 * i] == pt2)
				indices[3 * iReal] = nbPoints - 2;
			else
				indices[3 * iReal] = indicesTemp[3 * i] - offset;

			offset = 0;
			if (indicesTemp[3 * i +1] > pt1)
				offset++;
			if (indicesTemp[3 * i +1] > pt2)
				offset++;
			if (indicesTemp[3 * i +1] == pt1 || indicesTemp[3 * i +1] == pt2)
				indices[3 * iReal + 1] = nbPoints - 2;
			else
				indices[3 * iReal + 1] = indicesTemp[3 * i+1] - offset;

			offset = 0;
			if (indicesTemp[3 * i+2] > pt1)
				offset++;
			if (indicesTemp[3 * i+2] > pt2)
				offset++;
			if (indicesTemp[3 * i+2] == pt1 || indicesTemp[3 * i+2] == pt2)
				indices[3 * iReal+2] = nbPoints - 2;
			else
				indices[3 * iReal+2] = indicesTemp[3 * i+2]-offset;
			iReal++;
		}
	}

	fichier.close();

	for (int i = 0; i < iReal; i++) {
		Point* p1 = new Point(coordinates[indices[3 * i] * 3], coordinates[indices[3 * i] * 3 + 1], coordinates[indices[3 * i] * 3 + 2]);
		Point* p2 = new Point(coordinates[indices[3 * i + 1] * 3], coordinates[indices[3 * i + 1] * 3 + 1], coordinates[indices[3 * i + 1] * 3 + 2]);
		Point* p3 = new Point(coordinates[indices[3 * i + 2] * 3], coordinates[indices[3 * i + 2] * 3 + 1], coordinates[indices[3 * i + 2] * 3 + 2]);
		Vector* v1 = new Vector(*p2, *p1);
		Vector* v2 = new Vector(*p3, *p1);

		v1->Normalize();
		v2->Normalize();

		GLfloat t1[3] = { v1->getX(), v1->getY(), v1->getZ() };
		GLfloat t2[3] = { v2->getX(), v2->getY(), v2->getZ() };
		GLfloat out[3];

		normcrossprod(t1, t2, out);
		all_normal[i * 3] = out[0];
		all_normal[i * 3 + 1] = out[1];
		all_normal[i * 3 + 2] = out[2];
	}
	renderMaillage(coordinates, all_normal, indices, iReal);
}



//////////////////////////////////////////////////////////////////////////////////////////
// Fonction que vous allez modifier afin de dessiner
/////////////////////////////////////////////////////////////////////////////////////////
void render_scene(){

  glEnable(GL_DEPTH_TEST);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	//D�finition de la couleur

	int rayon = 5, hauteur = 10, angleMax = 90;
	gluLookAt(rayon, hauteur / 2 -2, rayon, 0, 0, 0, 0, 1, 0);
	glRotated(anglex, 1, 0, 0);
    glRotated(angley, 0, 0, 1);
    glRotated(anglez, 0, 1, 0);
	glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
	//readMaillage("cube.off", angleMax);
	fusePoint("cube.off", 0, 1);
    

}


