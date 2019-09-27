// test_couleur.cpp : Seuille une image en niveau de gris
//ecriture du profil dans un fichier
#include <stdio.h>

#include "image_ppm.h"

int main(int argc, char* argv[])
{
  char cNomImgLue[250], imgOut[250];
  char Resultat[250];
  int nH, nW, nTaille, numL_numC, L_C;


  //nW étant la longueur
  //nH étant la hauteur
  
  if (argc != 3) 
     {
       printf("Usage: ImageIn.pgm ImageOut.pgm\n"); 
       exit (1) ;
     }
   
   sscanf (argv[1],"%s",cNomImgLue) ;
   sscanf (argv[2],"%s",imgOut) ;
 
   OCTET *ImgIn;
   OCTET *ImgOut;
   
   lire_nb_lignes_colonnes_image_pgm(cNomImgLue, &nH, &nW);
   nTaille = nH * nW;
  
   allocation_tableau(ImgIn, OCTET, nTaille);
   lire_image_pgm(cNomImgLue, ImgIn, nH * nW);


  allocation_tableau(ImgOut, OCTET, nTaille);

   FILE* f = NULL;
   FILE* r = NULL;
   f = fopen("histo.dat", "w");
   r = fopen("resultat.dat", "w");
   double tab[256], tab2[256], tab3[256];
   //allocation_tableau(ImgOut, OCTET, nTaille);
	
   //   for (int i=0; i < nTaille; i++)
   // {
   //  if ( ImgIn[i] < S) ImgOut[i]=0; else ImgOut[i]=255;
   //  }

    double cpt;
    int occ[256]= {0};
    for(int l=0; l<=255;l++){
        cpt = 0;
        for(int i=0;i<=nH;i++){
        
            for(int j=0; j<nW; j++){
                if(ImgIn[i*nW+j] == l){
                cpt++;
                }
            }
        }
      fprintf(f,"%d %f \n", l, cpt);
      tab[l] = cpt;
      
    }

    double min = 0;
    double max = tab[10];
    int alphamin = 0, alphamax = 0;

    for(int i=0; i<=255; i++){
        if(tab[i]<=0){
          alphamax = i-1;
          break;
        }
    }

    for(int i=0; i<=255; i++){
        if(tab[i]>0){
          alphamin = i;
          break;
        }
    }
    min = 0;
    printf("%f %f\n",min, tab[alphamax]);

    double alpha = -255 * min / (max - min);
    double beta = 255 / (max - min);

    printf("%f %f\n",alpha,beta);

  

    double coef = (double)255 / (double)(max - min);a

    

      for(int l=0;l<=nH;l++){
        
            for(int j=0; j<nW; j++){

                ImgOut[l*nW+j] = round(coef * (double)( ImgIn[l*nW+j] - min));
                
            }
        }
        
    

    
    
    


  printf("\n");
  ecrire_image_pgm(imgOut, ImgOut,  nH, nW);
  free(ImgIn);
   return 1;
}