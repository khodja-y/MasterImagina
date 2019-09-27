// test_couleur.cpp : Seuille une image couleur 

#include <stdio.h>
#include "image_ppm.h"

int main(int argc, char* argv[])
{
  char cNomImgLue[250], nomFich[250];
  int nH, nW, nTaille, nR = 0, nG = 0, nB = 0;
  
  if (argc != 3) 
     {
       printf("Usage: ImageIn.ppm imgOut.dat\n"); 
       exit (1) ;
     }
   
   sscanf (argv[1],"%s",cNomImgLue) ;
   sscanf (argv[2],"%s",nomFich);

   OCTET *ImgIn;
   OCTET* imgOut;
   
   lire_nb_lignes_colonnes_image_ppm(cNomImgLue, &nH, &nW);
   nTaille = nH * nW;
  
   int nTaille3 = nTaille * 3;
   allocation_tableau(ImgIn, OCTET, nTaille3);
   lire_image_ppm(cNomImgLue, ImgIn, nH * nW);

   allocation_tableau(imgOut, OCTET, nTaille3);

   double tabr[256], tabv[256], tabb[256];


   int cptR, cptG, cptB;
   for(int j=0; j<=255;j++){
       cptR = 0;
       cptG = 0;
       cptB = 0;
        for (int i=0; i < nTaille3; i+=3)
            {
            nR = ImgIn[i];
            if(nR == j) cptR++;
            nG = ImgIn[i+1];
            if(nG == j) cptG++;
            nB = ImgIn[i+2];
            if(nB == j) cptB++;
            }
        tabr[j]=cptR;
        tabv[j]=cptG;
        tabb[j]=cptB;
        //fprintf(f,"%d %d %d %d\n",j , cptR, cptG, cptB);
   }


   double minr = 0, minv = 0, minb = 0;
   double maxr = 8, maxv = 8, maxb = 7;

   for(int i=0;i<=255;i++){
       if(tabr[i]==0){
           maxr = tabr[i-1];
           break;
       }
   }

   for(int i=0;i<=255;i++){
       if(tabv[i]==0){
           maxv = tabv[i-1];
           break;
       }
   }

   for(int i=0;i<=255;i++){
       if(tabb[i]==0){
           maxb = tabb[i-1];
           break;
       }
   }

   printf("%f %f %f\n",maxr,maxv,maxb);
   maxr = 10, maxv = 10, maxb = 10;

   double alphar = -255 * minr / (maxr - minr);
   double alphav = -255 * minv / (maxv - minv);
   double alphab = -255 * minb / (maxb - minb);
   double betar = 255 / (maxr - minr);
   double betav = 255 / (maxv - minv);
   double betab = 255 / (maxb - minb);

   printf("%f %f\n",alphar,betar);
   printf("%f %f\n",alphav,betav);
   printf("%f %f\n",alphab,betab);


   double coefr = (double)255 / (double)(maxr - minr);
   double coefv = (double)255 / (double)(maxv - minv);
   double coefb = (double)255 / (double)(maxb - minb);

   for(int i=0; i<nTaille3; i+=3){

       imgOut[i] = round(coefr * (double)( ImgIn[i] - minr));
       imgOut[i+1] = round(coefv * (double)( ImgIn[i+1] - minv));
       imgOut[i+2] = round(coefb * (double)( ImgIn[i+2] - minb));

   }

   ecrire_image_ppm(nomFich, imgOut,  nH, nW);
   free(ImgIn);
   return 1;
}
