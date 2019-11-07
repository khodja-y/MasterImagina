
#include "ImageBase.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "ImageBase.cpp"
#include "image_ppm.h"
#include <iostream>


double distanceColor(int red1, int green1, int blue1, int red2, int green2, int blue2) {
    return sqrt(pow(red1 - red2, 2) + pow(green1 - green2, 2) + pow(blue1 - blue2, 2));
}


double PSNR_couleur(ImageBase a, ImageBase b,int taille3){
    double EQM = 0;

    for(int i=0; i<a.getHeight(); i++){
		for(int j=0; j<a.getWidth(); j++){
           EQM += pow(distanceColor(a[i*3][j*3+0], a[i*3][j*3+1], a[i*3][j*3+2], b[i*3][j*3+0], a[i*3][j*3+1], b[i*3][j*3+2]),2); 
		}
	}
    
    EQM = EQM / (taille3 / 3);
    return (10 * log10(pow(255, 2) / EQM));
}

double PSNR_gris(ImageBase a, ImageBase b,int taille3){
    double EQM = 0;

    for(int i=0; i<a.getHeight(); i++){
		for(int j=0; j<a.getWidth(); j++){
           EQM += pow(a[i][j] - b[i][j],2); 
		}
	}
    
    EQM = EQM / (taille3 / 3);
    return (10 * log10(pow(255, 2) / EQM));
}

using namespace std;

int main(int argc, char* argv[])
{
  char cNomImgLue[250], cNomImgLue1[250];
  int nH, nW, nTaille, nH1, nW1, nTaille1;
  
  if (argc != 3) 
     {
       printf("Usage: ImageIn.ppm ImageIn1.ppm\n"); 
       exit (1) ;
     }
   
   sscanf (argv[1],"%s",cNomImgLue);
   sscanf (argv[2],"%s",cNomImgLue1);
   


   
   ImageBase imIn;
   imIn.load(cNomImgLue);

   nTaille = imIn.getHeight() * imIn.getWidth() * 3;
   
   ImageBase imIn1;
   imIn1.load(cNomImgLue1);

   double psnr = 0;

  if(imIn.getColor()==true) psnr = PSNR_couleur(imIn, imIn1, nTaille);
  else psnr = PSNR_gris(imIn, imIn1, nTaille);

  cout << "PSNR = " << psnr << endl;

   return 1;
}
