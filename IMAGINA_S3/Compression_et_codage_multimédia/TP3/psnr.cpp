

#include <stdio.h>
#include "image_ppm.h"
#include <iostream>


double distanceColor(int red1, int green1, int blue1, int red2, int green2, int blue2) {
    return sqrt(pow(red1 - red2, 2) + pow(green1 - green2, 2) + pow(blue1 - blue2, 2));
}


double PSNR(OCTET* a, OCTET* b,int taille3){
    double EQM = 0;
    for (int i = 0; i < taille3; i += 3) {
        EQM += pow(distanceColor(a[i], a[i + 1], a[i + 2], b[i], b[i + 1], b[i + 2]),2);
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
   

   OCTET *ImageIn, *ImageIn1; 
   
   lire_nb_lignes_colonnes_image_ppm(cNomImgLue, &nH, &nW);
   nTaille = nH * nW * 3;
   
   allocation_tableau(ImageIn, OCTET, nTaille);
   lire_image_ppm(cNomImgLue, ImageIn, nH * nW);

   lire_nb_lignes_colonnes_image_ppm(cNomImgLue1, &nH1, &nW1);
   nTaille1 = nH1 * nW1 * 3;
   
   allocation_tableau(ImageIn1, OCTET, nTaille1);
   lire_image_ppm(cNomImgLue1, ImageIn1, nH1 * nW1);

  double psnr = PSNR(ImageIn, ImageIn1, nTaille);

  cout << "PSNR = " << psnr << endl;

   return 1;
}
