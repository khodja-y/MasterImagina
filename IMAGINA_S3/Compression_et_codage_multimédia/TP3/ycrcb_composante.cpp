

#include <stdio.h>
#include "image_ppm.h"

int main(int argc, char* argv[])
{
  char cNomImgLue[250], cNomImgEcriteY[250], cNomImgEcriteCr[250], cNomImgEcriteCb[250];
  int nH, nW, nTaille, nR, nG, nB;
  
  if (argc != 5) 
     {
       printf("Usage: ImageIn.ppm ImageOutY ImageOutCr ImageOutCb\n"); 
       exit (1) ;
     }
   
   sscanf (argv[1],"%s",cNomImgLue);
   sscanf (argv[2],"%s",cNomImgEcriteY);
   sscanf (argv[3],"%s",cNomImgEcriteCr);
   sscanf (argv[4],"%s",cNomImgEcritecb);

   OCTET *ImageIn; 
   OCTET *ImageOutCr, *ImageOutY, *ImageOutCb;
   
   lire_nb_lignes_colonnes_image_ppm(cNomImgLue, &nH, &nW);
   nTaille = nH * nW;
  
   int nTaille3 = nTaille * 3;
   allocation_tableau(ImageIn, OCTET, nTaille3);
   lire_image_ppm(cNomImgLue, ImageIn, nH * nW);
   

     allocation_tableau(ImageOutY, OCTET, nTaille3); 
     allocation_tableau(ImageOutCr, OCTET, nTaille3); 
     allocation_tableau(ImageOutCb, OCTET, nTaille3); 


    for(int i = 0; i<nTaille3; i+=3){
        
    }


   ecrire_image_ppm(cNomImgEcrite, ImageOut,  nH, nW);
   free(ImageIn);
   return 1;
}
