// test_couleur.cpp : Seuille une image couleur 

#include <stdio.h>
#include "image_ppm.h"

int main(int argc, char* argv[])
{
  char cNomImgLue[250], cNomImgEcrite[250];
  int nH, nW, nTaille, nR, nG, nB;
  
  if (argc != 3) 
     {
       printf("Usage: ImageIn.ppm ImageOut.pgm \n"); 
       exit (1) ;
     }
   
   sscanf (argv[1],"%s",cNomImgLue) ;
   sscanf (argv[2],"%s",cNomImgEcrite);

   OCTET *ImgIn, *ImgOut;
   
   lire_nb_lignes_colonnes_image_ppm(cNomImgLue, &nH, &nW);
   nTaille = nH * nW;
  
   int nTaille3 = nTaille * 3;
   double luminance[nH*nW];
   allocation_tableau(ImgIn, OCTET, nTaille3);
   lire_image_ppm(cNomImgLue, ImgIn, nH * nW);
   allocation_tableau(ImgOut, OCTET, nH*nW);

   int j = 0;
	
   for (int i=0; i < nTaille3; i+=3)
     {
       nR = ImgIn[i];
       nG = ImgIn[i+1];
       nB = ImgIn[i+2];

       luminance[j] = 0.299 * nR + 0.587 * nG + 0.114 * nB;
       j++;
       
     }

    int l = 0;

    for (int i=0; i < nH; i++)
        for (int j=0; j < nW; j++)
            {
                ImgOut[i*nW+j]= luminance[l];
                l++;
            }



   ecrire_image_pgm(cNomImgEcrite, ImgOut,  nH, nW);
   free(ImgIn);
   return 1;
}
