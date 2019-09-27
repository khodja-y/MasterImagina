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
  
  if (argc != 4) 
     {
       printf("Usage: ImageIn.pgm L_C numL_numC \n"); 
       exit (1) ;
     }
   
   sscanf (argv[1],"%s",cNomImgLue) ;
   sscanf (argv[2],"%d",&L_C);
   sscanf (argv[3],"%d",&numL_numC);
 
   OCTET *ImgIn;
   
   lire_nb_lignes_colonnes_image_pgm(cNomImgLue, &nH, &nW);
   nTaille = nH * nW;
  
   allocation_tableau(ImgIn, OCTET, nTaille);
   lire_image_pgm(cNomImgLue, ImgIn, nH * nW);
   FILE* f = NULL;
   f = fopen("resultat.dat", "w");
   //allocation_tableau(ImgOut, OCTET, nTaille);
	
   //   for (int i=0; i < nTaille; i++)
   // {
   //  if ( ImgIn[i] < S) ImgOut[i]=0; else ImgOut[i]=255;
   //  }

  int val, cpt;

  if(L_C==0){
    for(int i=0;i<=nW;i++){
      fprintf(f,"%d %d\n",i, ImgIn[i*nW+numL_numC]);
    }
    
  }else if(L_C==1){
    
    for(int i=0;i<=nH;i++){
      fprintf(f,"%d %d\n",i, ImgIn[numL_numC*nW+i]);
    }
    
  }

  /*if(L_C==0){
    for(int i=0;i<=255;i++){
      cpt = 0;
      for(int j=0; j<nW; j++){
        if(ImgIn[numL_numC*nW+j] == i){
          cpt++;
        }
      }
      printf("%d ", cpt);
      fprintf(f,"%d \n",cpt);
    }
    
  }else if(L_C==1){
    for(int i=0; i<=255; i++){
      cpt=0;
        for(int j=0; j<nH; j++){
          if(ImgIn[numL_numC*nW+j] == i){
          cpt++;
          }
        }
      printf("%d ", cpt);
      fprintf(f,"%d \n",cpt);
    }
  }*/

  printf("\n");

  free(ImgIn);
   return 1;
}