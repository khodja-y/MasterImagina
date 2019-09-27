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
#define KEY_I 107 //| 107 75
#define KEY_K 105 //| 105 73
#define KEY_RIGHT 102
#define KEY_LEFT 100

long meridien = 8, angle = 0, parallele = 8, angle2 = 0, angle3 = 0;


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
  glOrtho(-15.0, 15.0, -15.0, 15.0, -15.0, 15.0);

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

Point* pointSphere(long nbrMeridien, long nbrParallele, long hauteur, long r, Point sommet){
  double theta = 0, phi = 0, theta2 = 0, phi2 = 0;
  double x = 0, y = 0, z = 0;
  Point p;
  Point* resultat = new Point[nbrMeridien*nbrParallele*4];
  long cpt = 0;

  for(int i=0; i<nbrParallele; i++){
    phi = M_PI * i / nbrParallele;
    phi2 = M_PI * (i+1) / nbrParallele;

    for(int j=0; j<nbrMeridien; j++){
        theta = 2 * M_PI * j / nbrMeridien;
        theta2 = 2 * M_PI * (j+1) / nbrMeridien;

        x = sommet.x + (r * sin(phi) * cos(theta));
        y = sommet.y + (r * sin(phi) * sin(theta));
        z = sommet.z + (r * cos(phi));

        p = Point(x,y,z);
        resultat[cpt] = p;
        cpt++;

        x = sommet.x + (r * sin(phi2) * cos(theta));
        y = sommet.y + (r * sin(phi2) * sin(theta));
        z = sommet.z + (r * cos(phi2));

        p = Point(x,y,z);
        resultat[cpt] = p;
        cpt++;

        x = sommet.x + (r * sin(phi) * cos(theta2));
        y = sommet.y + (r * sin(phi) * sin(theta2));
        z = sommet.z + (r * cos(phi));

        p = Point(x,y,z);
        resultat[cpt] = p;
        cpt++;

        x = sommet.x + (r * sin(phi2) * cos(theta2));
        y = sommet.y + (r * sin(phi2) * sin(theta2));
        z = sommet.z + (r * cos(phi2));

        p = Point(x,y,z);
        resultat[cpt] = p;
        cpt++;




    }

  }

  return resultat;

}


void affichageSphere(Point* sommets, long nbrMeridien, long nbrParallele, Point nord, Point sud){


  long cpt = 0;

  glColor3f(0.0F, 1.0F, 0.0F);
  for(int i=0; i<(nbrMeridien*nbrParallele*4); i+=4){
    drawLine(sommets[i], sommets[i+1]);
    drawLine(sommets[i+1], sommets[i+3]);
    drawLine(sommets[i+3], sommets[i+2]);
    drawLine(sommets[i+2], sommets[i]);
  }



}

GLuint initTextureFacade(){

    unsigned char* img;
    int largeur, hauteur;
    GLuint tex;


    glGenTextures(1, &tex);

    img = load_tga(const_cast<char*>("facade.tga"), &largeur, &hauteur);

    if(img!=NULL){
        glBindTexture(GL_TEXTURE_2D, tex);
        glTexImage2D(GL_TEXTURE_2D, 0, 3, largeur, hauteur, 0, GL_RGB, GL_UNSIGNED_BYTE, img);
        printf("facade\n");
        delete[] img;
    }

  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

  glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
  glActiveTexture(GL_TEXTURE0);
  glEnable(GL_TEXTURE_2D);

  return tex;

}

GLuint initTextureMur(){

    unsigned char* img;
    int largeur, hauteur;
    GLuint tex;


    glGenTextures(1, &tex);

    img = load_tga(const_cast<char*>("mur.tga"), &largeur, &hauteur);

    if(img!=NULL){
        glBindTexture(GL_TEXTURE_2D, tex);
        glTexImage2D(GL_TEXTURE_2D, 0, 3, largeur, hauteur, 0, GL_RGB, GL_UNSIGNED_BYTE, img);
        printf("facade\n");
        delete[] img;
    }

  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

  glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
  glActiveTexture(GL_TEXTURE0);
  glEnable(GL_TEXTURE_2D);

  return tex;

}

GLuint initTextureToit(){

    unsigned char* img;
    int largeur, hauteur;
    GLuint tex;


    glGenTextures(1, &tex);

    img = load_tga(const_cast<char*>("toit.tga"), &largeur, &hauteur);

    if(img!=NULL){
        glBindTexture(GL_TEXTURE_2D, tex);
        glTexImage2D(GL_TEXTURE_2D, 0, 3, largeur, hauteur, 0, GL_RGB, GL_UNSIGNED_BYTE, img);
        printf("facade\n");
        delete[] img;
    }

  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

  glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
  glActiveTexture(GL_TEXTURE0);
  glEnable(GL_TEXTURE_2D);

  return tex;

}

GLuint initTextureHerbe(){

    unsigned char* img;
    int largeur, hauteur;
    GLuint tex;


    glGenTextures(1, &tex);

    img = load_tga(const_cast<char*>("grass.tga"), &largeur, &hauteur);

    if(img!=NULL){
        glBindTexture(GL_TEXTURE_2D, tex);
        glTexImage2D(GL_TEXTURE_2D, 0, 3, largeur, hauteur, 0, GL_RGB, GL_UNSIGNED_BYTE, img);
        printf("facade\n");
        delete[] img;
    }

  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

  glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
  glActiveTexture(GL_TEXTURE0);
  glEnable(GL_TEXTURE_2D);

  return tex;

}

void drawHouse(GLuint tex, GLuint tex2, GLuint tex3, GLuint tex4){

    unsigned char* img;
    int largeur, hauteur;
    //GLuint tex, tex2, tex3;


  GLfloat light0Dif[4] = {1.0f, 0.2f, 0.2f, 1.0f};
  GLfloat light0Spec[4] = {1.0f, 0.2f, 0.2f, 1.0f};
  GLfloat light0Amb[4] = {0.0f, 0.0f, 0.0f, 0.0f};
  //glLightfv(GL_LIGHT0, GL_DIFFUSE, light0Dif);
  glLightfv(GL_LIGHT0, GL_SPECULAR, light0Spec);
  //glLightfv(GL_LIGHT0, GL_AMBIENT, light0Amb);

  GLfloat fogColor[4] = {0.2f, 0.2f, 0.2f, 0.0f};

  float position[] = {0.0f, 0.0f, 20.0f, 1.0f};

  
  glLightfv(GL_LIGHT0, GL_POSITION, position);

  glFogf(GL_FOG_MODE, GL_EXP);
  glFogf(GL_FOG_DENSITY, 0.2f);
  glFogfv(GL_FOG_COLOR, fogColor);
  glEnable(GL_FOG);


  //tex = initTextureFacade();
  glBindTexture(GL_TEXTURE_2D, tex);
  glBegin( GL_QUADS );

  
  

  //float position[] = {0.0, -1, 0.0, 0.0};
  //glLightfv(GL_LIGHT0, GL_POSITION, position);

  //face droite
        glTexCoord2f(0.0f,1.0f);
        glVertex3f( -4.0f, 0.0f, 5.0f );
        glTexCoord2f(1.0f,1.0f);
        glVertex3f( -4.0f, 0.0f, -5.0f );
        glTexCoord2f(1.0f,0.0f);
        glVertex3f( -4.0f, 5.0f, -5.0f );
        glTexCoord2f(0.0f,0.0f);
        glVertex3f( -4.0f, 5.0f, 5.0f );

  glEnd();




  glBegin(GL_QUADS);

        glFogf(GL_FOG_MODE, GL_EXP);
        glFogf(GL_FOG_DENSITY, 2.0f);
        glFogfv(GL_FOG_COLOR, fogColor);
        glEnable(GL_FOG);
        // bas
        glVertex3f( 4.0f, 0.0f, 5.0f );
        glVertex3f( -4.0f, 0.0f, 5.0f );
        glVertex3f( -4.0f, 0.0f, -5.0f );
        glVertex3f( 4.0f, 0.0f, -5.0f );
  
        // haut
        glVertex3f( 4.0f, 5.0f, 5.0f );
        glVertex3f( -4.0f, 5.0f, 5.0f );
        glVertex3f( -4.0f, 5.0f, -5.0f );
        glVertex3f( 4.0f, 5.0f, -5.0f );



  glEnd();



  

  //tex2 = initTextureMur();
  glBindTexture(GL_TEXTURE_2D, tex2);
  glBegin(GL_QUADS);


  

    
        // face avant
        glTexCoord2f(0.0f,0.0f);
        glVertex3f( 4.0f, 0.0f, 5.0f );
        glTexCoord2f(1.0f,0.0f);
        glVertex3f( -4.0f, 0.0f, 5.0f );
        glTexCoord2f(1.0f,1.0f);
        glVertex3f( -4.0f, 5.0f, 5.0f );
        glTexCoord2f(0.0f,1.0f);
        glVertex3f( 4.0f, 5.0f, 5.0f );

        // face arriere
        glTexCoord2f(0.0f,0.0f);
        glVertex3f( 4.0f, 0.0f, -5.0f );
        glTexCoord2f(1.0f,0.0f);
        glVertex3f( -4.0f, 0.0f, -5.0f );
        glTexCoord2f(1.0f,1.0f);
        glVertex3f( -4.0f, 5.0f, -5.0f );
        glTexCoord2f(0.0f,1.0f);
        glVertex3f( 4.0f, 5.0f, -5.0f );

        
        // face gauche
        glTexCoord2f(1.0f,0.0f);
        glVertex3f( 4.0f, 0.0f, 5.0f );
        glTexCoord2f(1.0f,1.0f);
        glVertex3f( 4.0f, 5.0f, 5.0f );
        glTexCoord2f(0.0f,1.0f);
        glVertex3f( 4.0f, 5.0f, -5.0f );
        glTexCoord2f(0.0f,0.0f);
        glVertex3f( 4.0f, 0.0f, -5.0f );

glEnd();



//tex3 = initTextureToit();

glBindTexture(GL_TEXTURE_2D, tex3);
glBegin( GL_QUADS );



        // droit
        glTexCoord2f(0.0f,0.0f);
        glVertex3f( -4.0f, 5.0f, 5.0f );
        glTexCoord2f(1.0f,0.0f);
        glVertex3f( -4.0f, 5.0f, -5.0f );
        glTexCoord2f(1.0f,1.0f);
        glVertex3f( 0.0f, 8.0f, -5.0f );
        glTexCoord2f(0.0f,1.0f);
        glVertex3f( 0.0f, 8.0f, 5.0f );

        // gauche
        glTexCoord2f(1.0f,0.0f);
        glVertex3f( 4.0f, 5.0f, 5.0f );
        glTexCoord2f(1.0f,1.0f);
        glVertex3f( 0.0f, 8.0f, 5.0f );
        glTexCoord2f(0.0f,1.0f);
        glVertex3f( 0.0f, 8.0f, -5.0f );
        glTexCoord2f(0.0f,0.0f);
        glVertex3f( 4.0f, 5.0f, -5.0f );

glEnd();

glBegin(GL_TRIANGLES);
        glFogf(GL_FOG_MODE, GL_EXP);
        glFogf(GL_FOG_DENSITY, 2.0f);
        glFogfv(GL_FOG_COLOR, fogColor);
        glEnable(GL_FOG);

        // face devant
        glTexCoord2f(0.0f,0.0f);
        glVertex3f( 4.0f, 5.0f, 5.0f );
        glTexCoord2f(1.0f,0.0f);
        glVertex3f( -4.0f, 5.0f, 5.0f );
        glTexCoord2f(0.5f,1.0f);
        glVertex3f( 0.0f, 8.0f, 5.0f );

glEnd();



        
glBegin(GL_TRIANGLES);

    glFogf(GL_FOG_MODE, GL_EXP);
    glFogf(GL_FOG_DENSITY, 2.0f);
    glFogfv(GL_FOG_COLOR, fogColor);
    glEnable(GL_FOG);
        // face arriere
        glTexCoord2f(0.0f,0.0f);
        glVertex3f( 4.0f, 5.0f, -5.0f );
        glTexCoord2f(1.0f,0.0f);
        glVertex3f( -4.0f, 5.0f, -5.0f );
        glTexCoord2f(0.5f,1.0f);
        glVertex3f( 0.0f, 8.0f, -5.0f );
        



glEnd();


glBindTexture(GL_TEXTURE_2D, tex4);
glBegin(GL_QUADS);
  
     

        glTexCoord2f(1.0f,0.0f);
        glVertex3f( 8.0f, 0.0f, 10.0f );
        glTexCoord2f(1.0f,1.0f);
        glVertex3f( -8.0f, 0.0f, 10.0f );
        glTexCoord2f(0.0f,1.0f);
        glVertex3f( -8.0f, 0.0f, -10.0f );
        glTexCoord2f(0.0f,0.0f);
        glVertex3f( 8.0f, 0.0f, -10.0f );

glEnd();


glEnable(GL_LIGHTING);
glEnable(GL_LIGHT0);
}






//////////////////////////////////////////////////////////////////////////////////////////
// Fonction que vous allez modifier afin de dessiner
/////////////////////////////////////////////////////////////////////////////////////////
void render_scene()
{

  glRotated(angle,1,0,0);
  glRotated(angle2,0,0,1);
  glRotated(angle3,0,1,0);

  GLuint tex, tex2, tex3, tex4;

  tex = initTextureFacade();
  tex2 = initTextureMur();
  tex3 = initTextureToit();
  tex4 = initTextureHerbe();

  drawHouse(tex, tex2, tex3, tex4);






}

