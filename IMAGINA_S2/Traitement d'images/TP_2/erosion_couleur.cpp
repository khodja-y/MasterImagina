// test_couleur.cpp : Seuille une image couleur 

#include <stdio.h>
#include "image_ppm.h"

int main(int argc, char* argv[])
{
  char cNomImgLue[250], cNomImgEcrite[250];
  int nH, nW, nTaille, nR, nG, nB, S;
  
  if (argc != 3) 
     {
       printf("Usage: ImageIn.ppm ImageOut.ppm Seuil \n"); 
       exit (1) ;
     }
   
   sscanf (argv[1],"%s",cNomImgLue) ;
   sscanf (argv[2],"%s",cNomImgEcrite);
   //sscanf (argv[3],"%d",&S);

   OCTET *ImgIn, *ImgOut;
   
   lire_nb_lignes_colonnes_image_ppm(cNomImgLue, &nH, &nW);
   nTaille = nH * nW;
  
   int nTaille3 = nTaille * 3;
   allocation_tableau(ImgIn, OCTET, nTaille3);
   lire_image_ppm(cNomImgLue, ImgIn, nH * nW);
   allocation_tableau(ImgOut, OCTET, nTaille3);
	
   for (int i=0; i < nTaille3; i+=3)
     {
       nR = ImgIn[i];
       nG = ImgIn[i+1];
       nB = ImgIn[i+2];
       

       if(i==0){
           if(nR==255){
               ImgOut[i+nW+1]=255;
           }else ImgOut[i]=0;
           if(nG==255){
               ImgOut[i+nW+1]=255;
           }else ImgOut[i+1]=0;
           if(nB==255){
               ImgOut[i+nW+1]=255;
           }ImgOut[i+2]=0;
       }else if(i==nTaille3){

           if(nR==255){
               ImgOut[i-(nW+1)]=255;
           }ImgOut[i]=0;
           if(nG==255){
               ImgOut[i+-(nW+1)]=255;
           }ImgOut[i+1]=0;
           if(nB==255){
               ImgOut[i-(nW+1)]=255;
           }ImgOut[i+2]=0;
       }else{
           if(nR==255){
               ImgOut[i-(nW+1)]=255;
               ImgOut[i+nW+1]=255;
           }ImgOut[i]=0;
           if(nG==255){
               ImgOut[i+-(nW+1)]=255;
               ImgOut[i+nW+1]=255;
           }ImgOut[i+1]=0;
           if(nB==255){
               ImgOut[i-(nW+1)]=255;
               ImgOut[i+nW+1]=255;
           }ImgOut[i+2]=0;
       }
       
     }

   ecrire_image_ppm(cNomImgEcrite, ImgOut,  nH, nW);
   free(ImgIn);
   return 1;
}
