

#include <stdio.h>
#include <stdlib.h>


void lecture_image(char nomFichier[], int dimX, int dimY, int dimZ){

  File* file;
  char* chaine;

  if(file = fopen(nomFicher, "rb") == NULL){
    printf("pas d'accès en lecture au fichier");
  }else{
    fscanf(file,"%s\n",chaine);
    printf("%s",chaine);
  }


}

unsigned short getValue(int i, int j, int k){

}

int main(int argc, char* argv[])
{
  char cNomImgLue[250], cNomImgEcrite[250];
  int nH, nW, nTaille, S;
  
  if (argc != 3) 
     {
       printf("Usage: nomfichier nomImageEcrite\n"); 
       exit (1) ;
     }
   
   sscanf (argv[1],"%s",cNomImgLue);
   sscanf (argv[2], "s",cNomImgEcrite)
   
   lecture_image(cNomImgLue, 512, 512, 160);
   
   return 1;
}
