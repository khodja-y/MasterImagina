

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


int main(int argc, char* argv[])
{
  char cNomImgLue[250], cNomImgEcrite[250];
  int dimX, dimY, dimZ;
  float sizeX, sizeY, sizeZ;
  
  if (argc != 9) 
     {
       printf("Usage: nomfichier nomImageEcrite dimX dimY dimZ sizeX sizeY sizeZ\n"); 
       exit (1) ;
     }
   
   sscanf (argv[1],"%s",cNomImgLue);
   sscanf (argv[2],"%s",cNomImgEcrite);
   sscanf (argv[3],"%d",&dimX);
   sscanf (argv[4],"%d",&dimY);
   sscanf (argv[5],"%d",&dimZ); 
   sscanf (argv[6],"%f",&sizeX);
   sscanf (argv[7],"%f",&sizeY);
   sscanf (argv[8],"%f",&sizeZ);      

   unsigned short* image;
   int taille = dimX*dimY*dimZ;
   unsigned short voxel;


   allocation_tableau(image, unsigned short, taille);
   
   lecture_image(cNomImgLue, image, dimX, dimY, dimZ);

   unsigned short* image2;

   allocation_tableau(image2, unsigned short, taille);


   for(int i=0; i<taille; i++){
       image2[i] = bswap_16(image[i]);
       printf("%hu\n", image2[i]);
   }
   

   for(int k=0; k<dimZ; k++){

       for(int i=0; i<dimX; i++){

           for(int j=0; j<dimY; j++){

               voxel = getValue(image2, i, j, k, dimX, dimY, dimZ);
               //printf("(%d,%d,%d) = %hu\n",i,j,k, getValue(image2,i,j,k,dimX,dimY,dimZ));

           }
       }
   }
   


   
   return 1;
}
