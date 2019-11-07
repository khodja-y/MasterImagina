#include "ImageBase.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "ImageBase.cpp"
#include <iostream>

using namespace std;

double entropie(ImageBase imIn);




void Xor(ImageBase imIn, char nom[]){

	ImageBase imOut(imIn.getWidth(), imIn.getHeight(), false);

	//génération pseudo aléatoire
	srand((time(NULL)));
	int ent_alea = rand() % 100;

	ImageBase imGen(imIn.getWidth(), imIn.getHeight(), false);
	srand((time(NULL)));


	for(int k=0; k<imIn.getHeight(); k++){
		for(int l=0; l<imIn.getWidth(); l++){
			int alea = rand() % ent_alea;

			if(alea > ent_alea/2){
				imGen[k][l] = 255;
			}else imGen[k][l] = 0;
		}
	}


	//chiffrement xor

	for(int i=0; i<imIn.getHeight(); i++){
		
		for(int j=0; j<imIn.getWidth(); j++){
			imOut[i][j] = imIn[i][j] ^ imGen[i][j];
		}
	}

	/* double h = entropie(imOut);

	cout << h << endl; */

	imOut.save(nom);
}

double entropie(ImageBase imIn){

	double alpha[256] = {0};
	double h = 0;

	for(int i=0; i<imIn.getHeight(); i++){
		for(int j=0; j<imIn.getWidth(); j++){
			int index = imIn[i][j];
			alpha[index]++;
		}
	}

	double palpha[256];

	for(int i=0; i<256; i++){
		palpha[i] = alpha[i] / 256;
	}

	for(int i=0; i<256; i++){
		h+= palpha[i] * log2(palpha[i]);
	}

	return -h;
}




void compression(ImageBase imIn, char nom[]){
	ImageBase imOut(imIn.getWidth()/2, imIn.getHeight()/2, false);

	for(int i=0; i<imIn.getHeight(); i+=2){
		for(int j=0; j<imIn.getWidth(); j+=2){
			
			if(i==0){
				if(j==0) imOut[i/2][j/2] = (imIn[i][j] + imIn[i+1][j] + imIn[i][j+1])/3;
				else if(j==j==imIn.getWidth()-1) imOut[i/2][j/2] = (imIn[i][j] + imIn[i][j-1] + imIn[i+1][j])/3;
				else imOut[i/2][j/2] = (imIn[i][j] + imIn[i+1][j] + imIn[i][j+1] + imIn[i][j-1])/4;
			}else if(i==imIn.getHeight()-1){
				if(j==0) imOut[i/2][j/2] = (imIn[i][j] + imIn[i-1][j] + imIn[i][j+1])/3;
				else if(j==imIn.getWidth()-1) imOut[i/2][j/2] = (imIn[i][j] + imIn[i-1][j] + imIn[i][j-1])/3;
				else imOut[i/2][j/2] = (imIn[i][j] + imIn[i-1][j] + imIn[i][j+1] + imIn[i][j-1])/4;
			}else if(j==0){
				if(i!=0 && i!=imIn.getHeight()-1) imOut[i/2][j/2] = (imIn[i][j] + imIn[i-1][j] + imIn[i+1][j] + imIn[i][j+1])/4;
			}else if(j==imIn.getWidth()-1){
				if(i!=0 && i!=imIn.getHeight()-1) imOut[i/2][j/2] = (imIn[i][j] + imIn[i-1][j] + imIn[i+1][j] + imIn[i][j-1])/4;
			}else{
				imOut[i/2][j/2] = (imIn[i][j] + imIn[i-1][j] + imIn[i+1][j] + imIn[i][j+1] + imIn[i][j-1])/5;
			}

			
		}
	}


	imOut.save(nom);
}

void compression_couleur(ImageBase imIn, char nom[]){
	ImageBase imOut(imIn.getWidth()/2, imIn.getHeight()/2, true);

	for(int i=0; i<imIn.getHeight(); i+=2){
		for(int j=0; j<imIn.getWidth(); j+=2){
			
			if(i==0){
				if(j==0){ 
					imOut[(i/2)*3][(j/2)*3+0] = (imIn[i*3][j*3+0] + imIn[(i+1)*3][j*3+0] + imIn[i*3][(j+1)*3+0])/3;
					imOut[(i/2)*3][(j/2)*3+1] = (imIn[i*3][j*3+1] + imIn[(i+1)*3][j*3+1] + imIn[i*3][(j+1)*3+1])/3;
					imOut[(i/2)*3][(j/2)*3+2] = (imIn[i*3][j*3+2] + imIn[(i+1)*3][j*3+2] + imIn[i*3][(j+1)*3+2])/3;
				}else if(j==imIn.getWidth()-4) {
					imOut[(i/2)*3][(j/2)*3+0] = (imIn[i*3][j*3+0] + imIn[i*3][(j-1)*3+0] + imIn[(i+1)*3][j*3+0])/3;
					imOut[(i/2)*3][(j/2)*3+1] = (imIn[i*3][j*3+1] + imIn[i*3][(j-1)*3+1] + imIn[(i+1)*3][j*3+1])/3;
					imOut[(i/2)*3][(j/2)*3+2] = (imIn[i*3][j*3+2] + imIn[i*3][(j-1)*3+2] + imIn[(i+1)*3][j*3+2])/3;
				}else {
					imOut[(i/2)*3][(j/2)*3+0] = (imIn[i*3][j*3+0] + imIn[(i+1)*3][j*3+0] + imIn[i*3][(j+1)*3+0] + imIn[i*3][(j-1)*3+0])/4;
					imOut[(i/2)*3][(j/2)*3+1] = (imIn[i*3][j*3+1] + imIn[(i+1)*3][j*3+1] + imIn[i*3][(j+1)*3+1] + imIn[i*3][(j-1)*3+1])/4;
					imOut[(i/2)*3][(j/2)*3+2] = (imIn[i*3][j*3+2] + imIn[(i+1)*3][j*3+2] + imIn[i*3][(j+1)*3+2] + imIn[i*3][(j-1)*3+2])/4;
				}
			}else if(i==imIn.getHeight()-1){
				if(j==0) {
					imOut[(i/2)*3][(j/2)*3+0] = (imIn[i*3][j*3+0] + imIn[(i-1)*3][j*3+0] + imIn[i*3][(j+1)*3+0])/3;
					imOut[(i/2)*3][(j/2)*3+1] = (imIn[i*3][j*3+1] + imIn[(i-1)*3][j*3+1] + imIn[i*3][(j+1)*3+1])/3;
					imOut[(i/2)*3][(j/2)*3+2] = (imIn[i*3][j*3+2] + imIn[(i-1)*3][j*3+2] + imIn[i*3][(j+1)*3+2])/3;
				}
				else if(j==imIn.getWidth()-1) {
					imOut[(i/2)*3][(j/2)*3+0] = (imIn[i*3][j] + imIn[(i-1)*3][j*3+0] + imIn[i*3][(j-1)*3+0])/3;
					imOut[(i/2)*3][(j/2)*3+1] = (imIn[i*3][j] + imIn[(i-1)*3][j*3+1] + imIn[i*3][(j-1)*3+1])/3;
					imOut[(i/2)*3][(j/2)*3+2] = (imIn[i*3][j] + imIn[(i-1)*3][j*3+2] + imIn[i*3][(j-1)*3+2])/3;
				}
				else {
					imOut[(i/2)*3][(j/2)*3+0] = (imIn[i*3][j*3+0] + imIn[(i-1)*3][j*3+0] + imIn[i*3][(j+1)*3+0] + imIn[i*3][(j-1)*3+0])/4;
					imOut[(i/2)*3][(j/2)*3+1] = (imIn[i*3][j*3+1] + imIn[(i-1)*3][j*3+1] + imIn[i*3][(j+1)*3+1] + imIn[i*3][(j-1)*3+1])/4;
					imOut[(i/2)*3][(j/2)*3+2] = (imIn[i*3][j*3+2] + imIn[(i-1)*3][j*3+2] + imIn[i*3][(j+1)*3+2] + imIn[i*3][(j-1)*3+2])/4;
				}
			}else if(j==0){
				if(i!=0 && i!=imIn.getHeight()-1) {
					imOut[(i/2)*3][(j/2)*3+0] = (imIn[i*3][j*3+0] + imIn[(i-1)*3][j*3+0] + imIn[(i+1)*3][j*3+0] + imIn[i*3][(j+1)*3+0])/4;
					imOut[(i/2)*3][(j/2)*3+1] = (imIn[i*3][j*3+1] + imIn[(i-1)*3][j*3+1] + imIn[(i+1)*3][j*3+1] + imIn[i*3][(j+1)*3+1])/4;
					imOut[(i/2)*3][(j/2)*3+2] = (imIn[i*3][j*3+2] + imIn[(i-1)*3][j*3+2] + imIn[(i+1)*3][j*3+2] + imIn[i*3][(j+1)*3+2])/4;
				}
			}else if(j==imIn.getWidth()-1){
				if(i!=0 && i!=imIn.getHeight()-1) {
					imOut[(i/2)*3][(j/2)*3+0] = (imIn[i*3][j*3+0] + imIn[(i-1)*3][j*3+0] + imIn[(i+1)*3][j*3+0] + imIn[i*3][(j-1)*3+0])/4;
					imOut[(i/2)*3][(j/2)*3+1] = (imIn[i*3][j*3+1] + imIn[(i-1)*3][j*3+1] + imIn[(i+1)*3][j*3+1] + imIn[i*3][(j-1)*3+1])/4;
					imOut[(i/2)*3][(j/2)*3+2] = (imIn[i*3][j*3+2] + imIn[(i-1)*3][j*3+2] + imIn[(i+1)*3][j*3+2] + imIn[i*3][(j-1)*3+2])/4;
				}
			}else{
				imOut[(i/2)*3][(j/2)*3+0] = (imIn[i*3][j*3+0] + imIn[(i-1)*3][j*3+0] + imIn[(i+1)*3][j*3+0] + imIn[i*3][(j+1)*3+0] + imIn[i*3][(j-1)*3+0])/5;
				imOut[(i/2)*3][(j/2)*3+1] = (imIn[i*3][j*3+1] + imIn[(i-1)*3][j*3+1] + imIn[(i+1)*3][j*3+1] + imIn[i*3][(j+1)*3+1] + imIn[i*3][(j-1)*3+1])/5;
				imOut[(i/2)*3][(j/2)*3+2] = (imIn[i*3][j*3+2] + imIn[(i-1)*3][j*3+2] + imIn[(i+1)*3][j*3+2] + imIn[i*3][(j+1)*3+2] + imIn[i*3][(j-1)*3+2])/5;
			}

			
		}
	}


	imOut.save(nom);
}

void decompression(ImageBase imIn, char nom[]){

	ImageBase imOut(imIn.getWidth()*2, imIn.getHeight()*2, false);

	for(int i=0; i<imIn.getHeight()*2; i++){
		for(int j=0; j<imIn.getWidth()*2; j++){
			imOut[i][j] = imIn[i/2][j/2];
		}
	}

	imOut.save(nom);
}

void decompression_couleur(ImageBase imIn, char nom[]){

	ImageBase imOut(imIn.getWidth()*2, imIn.getHeight()*2, false);

	for(int i=0; i<imIn.getHeight()*2; i++){
		for(int j=0; j<imIn.getWidth()*2; j++){
			imOut[i*3][j*3+0] = imIn[(i/2)*3][(j/2)*3+0];
			imOut[i*3][j*3+1] = imIn[(i/2)*3][(j/2)*3+1];
			imOut[i*3][j*3+2] = imIn[(i/2)*3][(j/2)*3+2];
		}
	}

	imOut.save(nom);
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

	//compression(imIn, cNomImgEcrite);

	decompression_couleur(imIn, cNomImgEcrite);

	//compression_couleur(imIn, cNomImgEcrite);


	/* //ImageBase imG(imIn.getWidth(), imIn.getHeight(), imIn.getColor());
	ImageBase imOut(imIn.getWidth(), imIn.getHeight(), imIn.getColor());

	for(int x = 0; x < imIn.getHeight(); ++x)
		for(int y = 0; y < imIn.getWidth(); ++y)
		{
			if (imIn[x][y] < S) 
				imOut[x][y] = 0;
			else imOut[x][y] = 255;
		}
		
	imOut.save(cNomImgEcrite);
		

	
	
	///////////////////////////////////////// Exemple de cr�ation d'une image couleur
	ImageBase imC(50, 100, true);

	for(int y = 0; y < imC.getHeight(); ++y)
		for(int x = 0; x < imC.getWidth(); ++x)
		{
			imC[y*3][x*3+0] = 200; // R
			imC[y*3][x*3+1] = 0; // G
			imC[y*3][x*3+2] = 0; // B
		}
		
	imC.save("imC.ppm");
		



	///////////////////////////////////////// Exemple de cr�ation d'une image en niveau de gris
	ImageBase imG(50, 100, false);

	for(int y = 0; y < imG.getHeight(); ++y)
		for(int x = 0; x < imG.getWidth(); ++x)
			imG[y][x] = 50;

	imG.save("imG.pgm");




	ImageBase imC2, imG2;
	
	///////////////////////////////////////// Exemple lecture image couleur
	imC2.load("imC.ppm");
	///////////////////////////////////////// Exemple lecture image en niveau de gris
	imG2.load("imG.pgm");
	
	

	///////////////////////////////////////// Exemple de r�cup�ration d'un plan de l'image
	ImageBase *R = imC2.getPlan(ImageBase::PLAN_R);
	R->save("R.pgm");
	delete R; */
	


	return 0;
}
