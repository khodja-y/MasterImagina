

#include <stdio.h>
#include "image_ppm.h"

int main(int argc, char* argv[])
{
  char cNomImgLueR[250], cNomImgLueV[250], cNomImgLueB[250], cNomImgEcrite[250];
  int nHR, nWR, nTailleR, nHV, nWV, nTailleV, nHB, nWB, nTailleB;
  
  if (argc != 5) 
     {
       printf("Usage: ImageInR.ppm ImageInV.ppm ImageInB.ppm ImageOut\n"); 
       exit (1) ;
     }
   
   sscanf (argv[1],"%s",cNomImgLueR);
   sscanf (argv[2],"%s",cNomImgLueV);
   sscanf (argv[2],"%s",cNomImgLueB);
   sscanf (argv[2],"%s",cNomImgEcrite);
   

   OCTET *ImageInR, *ImageInB, *ImageInV; 
   OCTET *ImageOutR;
   
   lire_nb_lignes_colonnes_image_ppm(cNomImgLueR, &nHR, &nWR);
   nTailleR = nHR * nWR * 3;

   lire_nb_lignes_colonnes_image_ppm(cNomImgLueV, &nHV, &nWV);
   nTailleV = nHV * nWV * 3;

   lire_nb_lignes_colonnes_image_ppm(cNomImgLueB, &nHB, &nWB);
   nTailleB = nHB * nWB * 3;
  
   
   allocation_tableau(ImageInR, OCTET, nTailleR);
   lire_image_ppm(cNomImgLueR, ImageInR, nHR * nWR);

   allocation_tableau(ImageInV, OCTET, nTailleV);
   lire_image_ppm(cNomImgLueV, ImageInV, nHV * nWV);

   allocation_tableau(ImageInB, OCTET, nTailleB);
   lire_image_ppm(cNomImgLueB, ImageInB, nHB * nWB);




   

   ecrire_image_ppm(cNomImgEcriteR, ImageOutR,  nH2, nW2);
	
   free(ImageInR);
   return 1;
}
