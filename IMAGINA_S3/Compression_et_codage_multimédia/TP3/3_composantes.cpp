

#include <stdio.h>
#include "image_ppm.h"

int main(int argc, char* argv[])
{
  char cNomImgLue[250], cNomImgEcrite[250], cNomImgEcriteR[250], cNomImgEcriteV[250], cNomImgEcriteB[250];
  int nH, nW, nTaille, nR, nG, nB;
  
  if (argc != 3) 
     {
       printf("Usage: ImageIn.ppm ImageOutR.ppm ImageOutV.ppm ImageOutB.ppm ImageOut\n"); 
       exit (1) ;
     }
   
   sscanf (argv[1],"%s",cNomImgLue);
   /* sscanf (argv[2],"%s",cNomImgEcriteR);
   sscanf (argv[3],"%s",cNomImgEcriteV);
   sscanf (argv[4],"%s",cNomImgEcriteB); */
   sscanf (argv[2],"%s",cNomImgEcrite);

   OCTET *ImgIn; 
   OCTET *ImageOutR;
   OCTET *ImageOutV;
   OCTET *ImageOutB;
   OCTET *ImageOut;
   
   lire_nb_lignes_colonnes_image_ppm(cNomImgLue, &nH, &nW);
   nTaille = nH * nW;
  
   int nTaille3 = nTaille * 3;
   allocation_tableau(ImgIn, OCTET, nTaille3);
   lire_image_ppm(cNomImgLue, ImgIn, nH * nW);
   
   /* allocation_tableau(ImageOutR, OCTET, nTaille3);
   allocation_tableau(ImageOutV, OCTET, nTaille3);
   allocation_tableau(ImageOutB, OCTET, nTaille3); */ 
   
	
   /* for (int i=0; i < nTaille3; i+=3)
     {
       ImageOutR[i] = ImgIn[i];
       ImageOutR[i+1] = 0;
       ImageOutR[i+2] = 0;
     }

     for (int i=0; i < nTaille3; i+=3)
     {
       ImageOutV[i] = 0;
       ImageOutV[i+1] = ImgIn[i+1];
       ImageOutV[i+2] = 0;
     }

     for (int i=0; i < nTaille3; i+=3)
     {
       ImageOutB[i] = 0;
       ImageOutB[i+1] = 0;
       ImageOutB[i+2] = ImgIn[i+2];
     } */
     allocation_tableau(ImageOut, OCTET, nTaille3); 


     for(int i=0; i<nTaille3; i+=12){

       ImageOut[i] = ImgIn[i];
       ImageOut[i+1] = ImgIn[i+1];
       ImageOut[i+2] = ImgIn[i+2];

       ImageOut[i+3] = ImgIn[i];
       ImageOut[i+4] = ImgIn[i+4];
       ImageOut[i+5] = ImgIn[i+2];

       ImageOut[i+6] = ImgIn[i];
       ImageOut[i+7] = ImgIn[i+7];
       ImageOut[i+8] = ImgIn[i+2];

       ImageOut[i+9] = ImgIn[i];
       ImageOut[i+10] = ImgIn[i+10];
       ImageOut[i+11] = ImgIn[i+2];


     }

   /* ecrire_image_ppm(cNomImgEcriteR, ImageOutR,  nH, nW);
   ecrire_image_ppm(cNomImgEcriteV, ImageOutV,  nH, nW);
   ecrire_image_ppm(cNomImgEcriteB, ImageOutB,  nH, nW); */
   ecrire_image_ppm(cNomImgEcrite, ImageOut,  nH, nW);
   free(ImgIn);
   return 1;
}
