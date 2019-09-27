#include "ImageBase.h"
#include <stdio.h>
#include "image_ppm.h"
#include "ImageBase.cpp"

int minimum(int x, int y, int z){
    
    int min = x;

    if(y<min) min=y;
    if(z<min) min=z;

    return min;

}



int main(int argc, char **argv)
{
	///////////////////////////////////////// Exemple d'un seuillage d'image
	char cNomImgLue[250], cNomImgEcrite[250];
  
	if (argc != 3) 
	{
		printf("Usage: ImageIn.pgm ImageOut.pgm \n"); 
		return 1;
	}
	sscanf (argv[1],"%s",cNomImgLue) ;
	sscanf (argv[2],"%s",cNomImgEcrite);
	
	//ImageBase imIn, imOut;
	ImageBase imIn;
	imIn.load(cNomImgLue);

    int max = 0, max2 = 0, max8 = 0;

	//ImageBase imG(imIn.getWidth(), imIn.getHeight(), imIn.getColor());
	ImageBase imOut(imIn.getWidth(), imIn.getHeight(), imIn.getColor());

	for(int x = 0; x < imIn.getHeight(); ++x){


		for(int y = 0; y < imIn.getWidth(); ++y)
		{

				if(x==0 && (y!=0 || y==imIn.getWidth()-1)){

                    max = minimum(imIn[x][y-1],imIn[x+1][y-1],imIn[x+1][y]);
                    max2 = minimum(max,imIn[x+1][y+1],imIn[x][y+1]);
					imOut[x][y] = max2;

				}else if(y==0 && (x!=0 && x!=imIn.getHeight()-1)){

                    max = minimum(imIn[x-1][y],imIn[x-1][y+1],imIn[x][y+1]);
                    max2 = minimum(max,imIn[x+1][y+1],imIn[x+1][y]);
					imOut[x][y] = max2;

				}else if(x==imIn.getHeight()-1 && (y!=0 || y!=imIn.getWidth()-1)){

                    max = minimum(imIn[x][y-1],imIn[x-1][y-1],imIn[x-1][y]);
                    max2 = minimum(max,imIn[x-1][y+1],imIn[x][y+1]);
					imOut[x][y] = max2;
					
				}else if(y==imIn.getWidth()-1 && (x!=0 || x!=imIn.getHeight()-1)){

                    max = minimum(imIn[x-1][y],imIn[x-1][y-1],imIn[x][y-1]);
                    max2= minimum(max,imIn[x+1][y],imIn[x+1][y-1]);
					imOut[x][y] = max2;
				
				}else if(x==0 && y==0){

                    max = minimum(imIn[x][y+1],imIn[x+1][y+1],imIn[x+1][y]);
					imOut[x][y] = max;

				}else if(x==imIn.getHeight()-1 && y==0){

                    max = minimum(imIn[x-1][y],imIn[x-1][y+1],imIn[x+1][y+1]);
					imOut[x][y] = max;

				}else if(x==0 && y==imIn.getWidth()-1){

                    max = minimum(imIn[x][y-1],imIn[x+1][y-1],imIn[x+1][y]);
					imOut[x][y] = max;

				}else if(x==imIn.getHeight()-1 && y==imIn.getWidth()-1){

                    max = minimum(imIn[x][y-1],imIn[x-1][y],imIn[x-1][y-1]);
					imOut[x][y] = max;

				}else{
                    max = minimum(imIn[x][y-1],imIn[x][y+1],imIn[x-1][y-1]);
                    max2 = minimum(max,imIn[x-1][y],imIn[x-1][y+1]);
                    max8 = minimum(max2,imIn[x+1][y-1],imIn[x+1][y]);
                    if(max8>=imIn[x+1][y+1]){
					    imOut[x][y] = max8;
                    }else imOut[x][y] = imIn[x+1][y+1];
					
                }
			}
		}
		
	imOut.save(cNomImgEcrite);
		



	return 0;
}
