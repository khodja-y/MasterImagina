// test_couleur.cpp : Seuille une image en niveau de gris
//ecriture du profil dans un fichier
#include <stdio.h>

#include "image_ppm.h"

int main(int argc, char* argv[])
{
  char cNomImgLue[250];
  char Resultat[250];
  int nH, nW, nTaille, numL_numC, L_C;


  //nW étant la longueur
  //nH étant la hauteur
  
  if (argc != 2) 
     {
       printf("Usage: ImageIn.pgm\n"); 
       exit (1) ;
     }
   
   sscanf (argv[1],"%s",cNomImgLue) ;
 
   OCTET *ImgIn;
   
   lire_nb_lignes_colonnes_image_pgm(cNomImgLue, &nH, &nW);
   nTaille = nH * nW;
  
   allocation_tableau(ImgIn, OCTET, nTaille);
   lire_image_pgm(cNomImgLue, ImgIn, nH * nW);
   FILE* f = NULL;
   f = fopen("histo.dat", "w");
   //allocation_tableau(ImgOut, OCTET, nTaille);
	
   //   for (int i=0; i < nTaille; i++)
   // {
   //  if ( ImgIn[i] < S) ImgOut[i]=0; else ImgOut[i]=255;
   //  }

    int cpt;
    int occ[256]= {0};
    for(int l=0; l<=255;l++){
        cpt = 0;
        for(int i=0;i<=nH;i++){
        
            for(int j=0; j<nW; j++){
                if(ImgIn[i*nW+j] == l){
                cpt++;
                }
            }
        }
      fprintf(f,"%d %d \n", l, cpt);
    }
    
    


  printf("\n");

  free(ImgIn);
   return 1;
}