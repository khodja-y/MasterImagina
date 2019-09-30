

#include <stdio.h>
#include "image_ppm.h"

int main(int argc, char* argv[])
{
  char cNomImgLue[250], cNomImgEcrite[250];
  int nH, nW, nTaille, nR, nG, nB;
  
  if (argc != 3) 
     {
       printf("Usage: ImageIn.ppm ImageOut\n"); 
       exit (1) ;
     }
   
   sscanf (argv[1],"%s",cNomImgLue);
   sscanf (argv[2],"%s",cNomImgEcrite);

   OCTET *ImageIn; 
   OCTET *ImageOut;
   
   lire_nb_lignes_colonnes_image_ppm(cNomImgLue, &nH, &nW);
   nTaille = nH * nW;
  
   int nTaille3 = nTaille * 3;
   allocation_tableau(ImageIn, OCTET, nTaille3);
   lire_image_ppm(cNomImgLue, ImageIn, nH * nW);
   

     allocation_tableau(ImageOut, OCTET, nTaille3); 


     for(int i=0; i<nTaille3; i+=3){

       ImageOut[i] = 0.299 * ImageIn[i] + 0.587 * ImageIn[i+1] + 0.114 * ImageIn[i+2];
       ImageOut[i+1] = 128 - 0.1687 * ImageIn[i] - 0.3313 * ImageIn[i+1] + 0.5 * ImageIn[i+2];
       ImageOut[i+2] = 128 + 0.5 * ImageIn[i] - 0.4187 * ImageIn[i+1] - 0.813 * ImageIn[i+2];

     }


   ecrire_image_ppm(cNomImgEcrite, ImageOut,  nH, nW);
   free(ImageIn);
   return 1;
}
