

#include <stdio.h>
#include <stdlib.h>
#include <byteswap.h>

#define allocation_tableau(nom, type, nombre) \
if( (nom = (type*) calloc (nombre, sizeof(type) ) ) == NULL ) \
{\
 printf("\n Allocation dynamique impossible pour un pointeur-tableau \n");\
 exit(1);\
}


void lecture_image(char nomFichier[], unsigned short* image, int dimX, int dimY, int dimZ){

  FILE* f;
  unsigned short chaine;

  if((f = fopen(nomFichier, "rb")) == NULL){
    printf("pas d'accès en lecture au fichier");
  }else{

    int taille = dimX * dimY * dimZ;

    if( (fread((unsigned short*)image, sizeof(unsigned short), taille, f))
	     !=  (size_t)  taille)
	{
	       printf("\nErreur de lecture de l'image %s \n", nomFichier);
	       exit(EXIT_FAILURE);
	}
	
    fclose(f);

  }

}

void ecrire_image(char nom_image[], unsigned short *image, int dimX, int dimY, int dimZ)
{
   FILE *f_image;
   int taille_image = dimX * dimY * dimZ;

   if( (f_image = fopen(nom_image, "wb")) == NULL)
      {
	 printf("\nPas d'acces en ecriture sur l'image %s \n", nom_image);
	 exit(EXIT_FAILURE);
      }
   else
      {

	 if( (fwrite((unsigned short*)image, sizeof(unsigned short), taille_image, f_image))
	     != (size_t) taille_image)
	    {
	       printf("\nErreur de lecture de l'image %s \n", nom_image);
	       exit(EXIT_FAILURE);
	    }
	 fclose(f_image);
      }
}

unsigned short getValue(unsigned short* image, int i, int j, int k, int dimX, int dimY, int dimZ){
    return image[k * dimX * dimY + (((dimY-1)-j)*dimX + i)];
}

unsigned short maximum(unsigned short* image, int taille){
    unsigned short max = image[0];

    for(int i=0; i<taille;i++){
        if(image[i]>max){
            max = image[i];
        }
    }

    return max;
}

unsigned short mimimum(unsigned short* image, int taille){
    unsigned short min = image[0];

    for(int i=0; i<taille;i++){
        if(image[i]<min){
            min = image[i];
        }
    }

    return min;
}

void volumeRendering(unsigned short* image, int dimX, int dimY, int dimZ, unsigned short* result, int visuAxis, int visuMode){

    switch (visuMode)
    {
        case 1:
            
            break;
        case 2:

            break;
        case 3:

            break;
    
        default:
            break;
    }
}

int main(int argc, char* argv[])
{
  char cNomImgLue[250], cNomImgEcrite[250];
  int dimX, dimY, dimZ;
  
  if (argc != 6) 
     {
       printf("Usage: nomfichier nomImageEcrite dimX dimY dimZ\n"); 
       exit (1) ;
     }
   
   sscanf (argv[1],"%s",cNomImgLue);
   sscanf (argv[2],"%s",cNomImgEcrite);
   sscanf (argv[3],"%d",&dimX);
   sscanf (argv[4],"%d",&dimY);
   sscanf (argv[5],"%d",&dimZ);    

   unsigned short* image;
   int taille = dimX*dimY*dimZ;


   allocation_tableau(image, unsigned short, taille);
   
   lecture_image(cNomImgLue, image, dimX, dimY, dimZ);

   unsigned short* image2;

   allocation_tableau(image2, unsigned short, taille);


    //inversion des bits
   for(int i=0; i<taille; i++){
       image2[i] = bswap_16(image[i]);
   }

   //max
   unsigned short max = maximum(image2, taille);
   printf("%hu\n", max);

   //min
   unsigned short min = mimimum(image2, taille);
   printf("%hu\n", min);   

   // la valeur demandée pour l'image INCISIX
   printf("(184,343,83) = %hu\n", getValue(image2,184,343,83,dimX,dimY,dimZ));


   
   return 1;
}
