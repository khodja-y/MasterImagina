// test_couleur.cpp : Seuille une image couleur 

#include <stdio.h>
#include "image_ppm.h"

int main(int argc, char* argv[])
{
  char cNomImgLue[250], cNomImgEcrite[250], cNomImgBin[250];
  int nH, nW, nTaille, nR, nG, nB, S, nHb, nWb;
  int pixelR, pixelV, pixelB;
  
  if (argc != 4) 
     {
       printf("Usage: ImageIn.ppm ImageBin.pgm ImageOut.ppm\n"); 
       exit (1) ;
     }
   
   sscanf (argv[1],"%s",cNomImgLue) ;
   sscanf (argv[2],"%s",cNomImgBin) ;
   sscanf (argv[3],"%s",cNomImgEcrite);

   OCTET *ImgIn, *ImgOut, *ImgBin;
   
   lire_nb_lignes_colonnes_image_ppm(cNomImgLue, &nH, &nW);
   nTaille = nH * nW;
  
   int nTaille3 = nTaille * 3;
   allocation_tableau(ImgIn, OCTET, nTaille3);
   lire_image_ppm(cNomImgLue, ImgIn, nH * nW);
   allocation_tableau(ImgOut, OCTET, nTaille3);

   lire_nb_lignes_colonnes_image_pgm(cNomImgBin, &nHb, &nWb);
   allocation_tableau(ImgBin, OCTET, nTaille);
   lire_image_pgm(cNomImgBin, ImgBin, nHb * nWb);
    
   int l = 0;

   int tab[nHb*nWb];


   for (int i=0; i < nH; i++)
    for (int j=0; j < nW; j++)
        {
           tab[l] = ImgBin[i*nW+j];
        }

    l=0;

   for (int i=0; i < nTaille3; i+=3)
     {
       nR = ImgIn[i];
       nG = ImgIn[i+1];
       nB = ImgIn[i+2];
    
       ImgOut[i] = nR;
       ImgOut[i+1] = nG;
       ImgOut[i+2] = nB;
       

       if(tab[l]==255){

           pixelR = (ImgIn[(i-3)-nW*3] + ImgIn[(i-3)] + ImgIn[(i-3)+nW*3] + ImgIn[i-nW*3] + ImgIn[i] + ImgIn[i+nW*3] + ImgIn[(i+3)-nW*3] + ImgIn[(i+3)] + ImgIn[(i+3)+nW*3]);
           pixelV = (ImgIn[(i+1-3)-nW*3] + ImgIn[(i+1-3)] + ImgIn[(i+1-3)+nW*3] + ImgIn[i+1-nW*3] + ImgIn[i+1] + ImgIn[i+1+nW*3] + ImgIn[(i+1+3)-nW*3] + ImgIn[(i+1+3)] + ImgIn[(i+1+3)+nW*3]);
           pixelB = (ImgIn[(i+2-3)-nW*3] + ImgIn[(i+2-3)] + ImgIn[(i+2-3)+nW*3] + ImgIn[i+2-nW*3] + ImgIn[i+2] + ImgIn[i+2+nW*3] + ImgIn[(i+2+3)-nW*3] + ImgIn[(i+2+3)] + ImgIn[(i+2+3)+nW*3]);

           pixelR = pixelR / 9;
           pixelV = pixelV / 9;
           pixelB = pixelB / 9;

           ImgOut[i] = pixelR;
           ImgOut[i+1] = pixelV;
           ImgOut[i+2] = pixelB;
           
       }
       l++;
       
       
     }

   ecrire_image_ppm(cNomImgEcrite, ImgOut,  nH, nW);
   free(ImgIn);
   return 1;
}
