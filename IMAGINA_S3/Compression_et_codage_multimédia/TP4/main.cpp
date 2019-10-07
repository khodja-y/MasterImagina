#include "ImageBase.hpp"
#include "ImageBase.cpp"
#include "image_ppm.h"
#include <stdio.h>


ImageBase decompositionY(ImageBase imIn, char nom[250]){

	ImageBase imOut(imIn.getWidth(), imIn.getHeight(), true);

	float bf, fv, fh, thf;

	for(int i=0; i<imIn.getHeight(); i+=2){
		for(int j=0; j<imIn.getWidth(); j+=2){

			bf = (imIn[j*3][i*3+0] + imIn[(j+1)*3][i*3+0] + imIn[j*3][(i+1)*3+0] + imIn[(j+1)*3][(i+1)*3+0]) / 4;
			fv = (imIn[j*3][i*3+0] + imIn[(j+1)*3][i*3+0] - imIn[j*3][(i+1)*3+0] - imIn[(j+1)*3][(i+1)*3+0]) / 2;
			fh = (imIn[j*3][i*3+0] - imIn[(j+1)*3][i*3+0] + imIn[j*3][(i+1)*3+0] - imIn[(j+1)*3][(i+1)*3+0]) / 2;
			thf = (imIn[j*3][i*3+0] - imIn[(j+1)*3][i*3+0] - imIn[j*3][(i+1)*3+0] + imIn[(j+1)*3][(i+1)*3+0]);

			imOut[j/2*3][i/2*3+0] = bf;
			imOut[(j/2+(imIn.getWidth()/2))*3][i/2*3+0] = fv;
			imOut[j/2*3][(i/2+(imIn.getHeight()/2))*3+0] = fh;
			imOut[(j/2+(imIn.getWidth()/2))*3][(i/2+(imIn.getHeight()/2))*3+0] = thf;

			imOut[j/2*3][i/2*3+1] = 0;
			imOut[(j/2+(imIn.getWidth()/2))*3][i/2*3+1] = 0;
			imOut[j/2*3][(i/2+(imIn.getHeight()/2))*3+1] = 0;
			imOut[(j/2+(imIn.getWidth()/2))*3][(i/2+(imIn.getHeight()/2))*3+1] = 0;

			imOut[j/2*3][i/2*3+2] = 0;
			imOut[(j/2+(imIn.getWidth()/2))*3][i/2*3+2] = 0;
			imOut[j/2*3][(i/2+(imIn.getHeight()/2))*3+2] = 0;
			imOut[(j/2+(imIn.getWidth()/2))*3][(i/2+(imIn.getHeight()/2))*3+2] = 0;
		}
	}
	
	imOut.save(nom);

	return imOut;
}


ImageBase decompositionCr(ImageBase imIn, char nom[250]){

	ImageBase imOut(imIn.getWidth(), imIn.getHeight(), true);

	float bf, fv, fh, thf;

	for(int i=0; i<imIn.getHeight(); i+=2){
		for(int j=0; j<imIn.getWidth(); j+=2){

			bf = (imIn[j*3][i*3+1] + imIn[(j+1)*3][i*3+1] + imIn[j*3][(i+1)*3+1] + imIn[(j+1)*3][(i+1)*3+1]) / 4;
			fv = (imIn[j*3][i*3+1] + imIn[(j+1)*3][i*3+1] - imIn[j*3][(i+1)*3+1] - imIn[(j+1)*3][(i+1)*3+1]) / 2;
			fh = (imIn[j*3][i*3+1] - imIn[(j+1)*3][i*3+1] + imIn[j*3][(i+1)*3+1] - imIn[(j+1)*3][(i+1)*3+1]) / 2;
			thf = (imIn[j*3][i*3+1] - imIn[(j+1)*3][i*3+1] - imIn[j*3][(i+1)*3+1] + imIn[(j+1)*3][(i+1)*3+1]);

			imOut[j/2*3][i/2*3+0] = 0;
			imOut[(j/2+(imIn.getWidth()/2))*3][i/2*3+0] = 0;
			imOut[j/2*3][(i/2+(imIn.getHeight()/2))*3+0] = 0;
			imOut[(j/2+(imIn.getWidth()/2))*3][(i/2+(imIn.getHeight()/2))*3+0] = 0;

			imOut[j/2*3][i/2*3+1] = bf;
			imOut[(j/2+(imIn.getWidth()/2))*3][i/2*3+1] = fv;
			imOut[j/2*3][(i/2+(imIn.getHeight()/2))*3+1] = fh;
			imOut[(j/2+(imIn.getWidth()/2))*3][(i/2+(imIn.getHeight()/2))*3+1] = thf;

			imOut[j/2*3][i/2*3+2] = 0;
			imOut[(j/2+(imIn.getWidth()/2))*3][i/2*3+2] = 0;
			imOut[j/2*3][(i/2+(imIn.getHeight()/2))*3+2] = 0;
			imOut[(j/2+(imIn.getWidth()/2))*3][(i/2+(imIn.getHeight()/2))*3+2] = 0;
		}
	}
		
	imOut.save(nom);

	return imOut;
}



ImageBase decompositionCb(ImageBase imIn, char nom[250]){

	ImageBase imOut(imIn.getWidth(), imIn.getHeight(), true);

	float bf, fv, fh, thf;

	for(int i=0; i<imIn.getHeight(); i+=2){
		for(int j=0; j<imIn.getWidth(); j+=2){

			bf = (imIn[j*3][i*3+2] + imIn[(j+1)*3][i*3+2] + imIn[j*3][(i+1)*3+2] + imIn[(j+1)*3][(i+1)*3+2]) / 4;
			fv = (imIn[j*3][i*3+2] + imIn[(j+1)*3][i*3+2] - imIn[j*3][(i+1)*3+2] - imIn[(j+1)*3][(i+1)*3+2]) / 2;
			fh = (imIn[j*3][i*3+2] - imIn[(j+1)*3][i*3+2] + imIn[j*3][(i+1)*3+2] - imIn[(j+1)*3][(i+1)*3+2]) / 2;
			thf = (imIn[j*3][i*3+2] - imIn[(j+1)*3][i*3+2] - imIn[j*3][(i+1)*3+2] + imIn[(j+1)*3][(i+1)*3+2]);

			imOut[j/2*3][i/2*3+0] = 0;
			imOut[(j/2+(imIn.getWidth()/2))*3][i/2*3+0] = 0;
			imOut[j/2*3][(i/2+(imIn.getHeight()/2))*3+0] = 0;
			imOut[(j/2+(imIn.getWidth()/2))*3][(i/2+(imIn.getHeight()/2))*3+0] = 0;

			imOut[j/2*3][i/2*3+1] = 0;
			imOut[(j/2+(imIn.getWidth()/2))*3][i/2*3+1] = 0;
			imOut[j/2*3][(i/2+(imIn.getHeight()/2))*3+1] = 0;
			imOut[(j/2+(imIn.getWidth()/2))*3][(i/2+(imIn.getHeight()/2))*3+1] = 0;

			imOut[j/2*3][i/2*3+2] = bf;
			imOut[(j/2+(imIn.getWidth()/2))*3][i/2*3+2] = fv;
			imOut[j/2*3][(i/2+(imIn.getHeight()/2))*3+2] = fh;
			imOut[(j/2+(imIn.getWidth()/2))*3][(i/2+(imIn.getHeight()/2))*3+2] = thf;
		}
	}
		
	imOut.save(nom);

	return imOut;
}

void rassemblement(ImageBase Y, ImageBase Cr, ImageBase Cb, char nom[250]){

	ImageBase imOut(Y.getWidth(), Y.getHeight(), true);

	for(int i=0; i<Y.getWidth(); i++){
		for(int j=0; j<Y.getHeight();j++){
			imOut[j*3][i*3+0] = Y[j*3][i*3+0];
			imOut[j*3][i*3+1] = Cr[j*3][i*3+1];
			imOut[j*3][i*3+2] = Cb[j*3][i*3+2];
		}
	}

	imOut.save(nom);

}

void rassemblement2(ImageBase imIn, char nom[250]){

	ImageBase imOut(imIn.getWidth(), imIn.getHeight(), true);

	float bf, fv, fh, thf;

	for(int i=0; i<imIn.getHeight(); i+=2){
		for(int j=0; j<imIn.getWidth(); j+=2){

			bf = (imIn[j*3][i*3+0] + imIn[(j+1)*3][i*3+0] + imIn[j*3][(i+1)*3+0] + imIn[(j+1)*3][(i+1)*3+0]) / 4;
			fv = (imIn[j*3][i*3+0] + imIn[(j+1)*3][i*3+0] - imIn[j*3][(i+1)*3+0] - imIn[(j+1)*3][(i+1)*3+0]) / 2;
			fh = (imIn[j*3][i*3+0] - imIn[(j+1)*3][i*3+0] + imIn[j*3][(i+1)*3+0] - imIn[(j+1)*3][(i+1)*3+0]) / 2;
			thf = (imIn[j*3][i*3+0] - imIn[(j+1)*3][i*3+0] - imIn[j*3][(i+1)*3+0] + imIn[(j+1)*3][(i+1)*3+0]);

			imOut[j/2*3][i/2*3+0] = bf;
			imOut[(j/2+(imIn.getWidth()/2))*3][i/2*3+0] = fv;
			imOut[j/2*3][(i/2+(imIn.getHeight()/2))*3+0] = fh;
			imOut[(j/2+(imIn.getWidth()/2))*3][(i/2+(imIn.getHeight()/2))*3+0] = thf;

			bf = (imIn[j*3][i*3+1] + imIn[(j+1)*3][i*3+1] + imIn[j*3][(i+1)*3+1] + imIn[(j+1)*3][(i+1)*3+1]) / 4;
			fv = (imIn[j*3][i*3+1] + imIn[(j+1)*3][i*3+1] - imIn[j*3][(i+1)*3+1] - imIn[(j+1)*3][(i+1)*3+1]) / 2;
			fh = (imIn[j*3][i*3+1] - imIn[(j+1)*3][i*3+1] + imIn[j*3][(i+1)*3+1] - imIn[(j+1)*3][(i+1)*3+1]) / 2;
			thf = (imIn[j*3][i*3+1] - imIn[(j+1)*3][i*3+1] - imIn[j*3][(i+1)*3+1] + imIn[(j+1)*3][(i+1)*3+1]);

			imOut[j/2*3][i/2*3+1] = bf;
			imOut[(j/2+(imIn.getWidth()/2))*3][i/2*3+1] = fv;
			imOut[j/2*3][(i/2+(imIn.getHeight()/2))*3+1] = fh;
			imOut[(j/2+(imIn.getWidth()/2))*3][(i/2+(imIn.getHeight()/2))*3+1] = thf;

			bf = (imIn[j*3][i*3+2] + imIn[(j+1)*3][i*3+2] + imIn[j*3][(i+1)*3+2] + imIn[(j+1)*3][(i+1)*3+2]) / 4;
			fv = (imIn[j*3][i*3+2] + imIn[(j+1)*3][i*3+2] - imIn[j*3][(i+1)*3+2] - imIn[(j+1)*3][(i+1)*3+2]) / 2;
			fh = (imIn[j*3][i*3+2] - imIn[(j+1)*3][i*3+2] + imIn[j*3][(i+1)*3+2] - imIn[(j+1)*3][(i+1)*3+2]) / 2;
			thf = (imIn[j*3][i*3+2] - imIn[(j+1)*3][i*3+2] - imIn[j*3][(i+1)*3+2] + imIn[(j+1)*3][(i+1)*3+2]);

			imOut[j/2*3][i/2*3+2] = bf;
			imOut[(j/2+(imIn.getWidth()/2))*3][i/2*3+2] = fv;
			imOut[j/2*3][(i/2+(imIn.getHeight()/2))*3+2] = fh;
			imOut[(j/2+(imIn.getWidth()/2))*3][(i/2+(imIn.getHeight()/2))*3+2] = thf;
		}
	}
	
	imOut.save(nom);

}

void decompositionYCrCb2(ImageBase imIn, char nom[250]){

	ImageBase imOut(imIn.getWidth(), imIn.getHeight(), true);
	imOut.copy(imIn);

	float bf, fv, fh, thf;

	for(int i=0; i<imIn.getHeight()/2; i+=2){

		for(int j=0; j<imIn.getWidth()/2; j+=2){

			bf = (imIn[j*3][i*3+0] + imIn[(j+1)*3][i*3+0] + imIn[j*3][(i+1)*3+0] + imIn[(j+1)*3][(i+1)*3+0]) / 4;
			fv = (imIn[j*3][i*3+0] + imIn[(j+1)*3][i*3+0] - imIn[j*3][(i+1)*3+0] - imIn[(j+1)*3][(i+1)*3+0]) / 2;
			fh = (imIn[j*3][i*3+0] - imIn[(j+1)*3][i*3+0] + imIn[j*3][(i+1)*3+0] - imIn[(j+1)*3][(i+1)*3+0]) / 2;
			thf = (imIn[j*3][i*3+0] - imIn[(j+1)*3][i*3+0] - imIn[j*3][(i+1)*3+0] + imIn[(j+1)*3][(i+1)*3+0]);

			imOut[j/2*3][i/2*3+0] = bf;
			imOut[(j/2+(imIn.getWidth()/4))*3][i/2*3+0] = fv;
			imOut[j/2*3][(i/2+(imIn.getHeight()/4))*3+0] = fh;
			imOut[(j/2+(imIn.getWidth()/4))*3][(i/2+(imIn.getHeight()/4))*3+0] = thf;

			bf = (imIn[j*3][i*3+1] + imIn[(j+1)*3][i*3+1] + imIn[j*3][(i+1)*3+1] + imIn[(j+1)*3][(i+1)*3+1]) / 4;
			fv = (imIn[j*3][i*3+1] + imIn[(j+1)*3][i*3+1] - imIn[j*3][(i+1)*3+1] - imIn[(j+1)*3][(i+1)*3+1]) / 2;
			fh = (imIn[j*3][i*3+1] - imIn[(j+1)*3][i*3+1] + imIn[j*3][(i+1)*3+1] - imIn[(j+1)*3][(i+1)*3+1]) / 2;
			thf = (imIn[j*3][i*3+1] - imIn[(j+1)*3][i*3+1] - imIn[j*3][(i+1)*3+1] + imIn[(j+1)*3][(i+1)*3+1]);

			imOut[j/2*3][i/2*3+1] = bf;
			imOut[(j/2+(imIn.getWidth()/4))*3][i/2*3+1] = fv;
			imOut[j/2*3][(i/2+(imIn.getHeight()/4))*3+1] = fh;
			imOut[(j/2+(imIn.getWidth()/4))*3][(i/2+(imIn.getHeight()/4))*3+1] = thf;

			bf = (imIn[j*3][i*3+2] + imIn[(j+1)*3][i*3+2] + imIn[j*3][(i+1)*3+2] + imIn[(j+1)*3][(i+1)*3+2]) / 4;
			fv = (imIn[j*3][i*3+2] + imIn[(j+1)*3][i*3+2] - imIn[j*3][(i+1)*3+2] - imIn[(j+1)*3][(i+1)*3+2]) / 2;
			fh = (imIn[j*3][i*3+2] - imIn[(j+1)*3][i*3+2] + imIn[j*3][(i+1)*3+2] - imIn[(j+1)*3][(i+1)*3+2]) / 2;
			thf = (imIn[j*3][i*3+2] - imIn[(j+1)*3][i*3+2] - imIn[j*3][(i+1)*3+2] + imIn[(j+1)*3][(i+1)*3+2]);

			imOut[j/2*3][i/2*3+2] = bf;
			imOut[(j/2+(imIn.getWidth()/4))*3][i/2*3+2] = fv;
			imOut[j/2*3][(i/2+(imIn.getHeight()/4))*3+2] = fh;
			imOut[(j/2+(imIn.getWidth()/4))*3][(i/2+(imIn.getHeight()/4))*3+2] = thf;
		}
	}

	imOut.save(nom);

}

void decompositionYCrCb3(ImageBase imIn, char nom[250]){

	ImageBase imOut(imIn.getWidth(), imIn.getHeight(), true);
	imOut.copy(imIn);

	float bf, fv, fh, thf;

	for(int i=0; i<imIn.getHeight()/4; i+=2){

		for(int j=0; j<imIn.getWidth()/4; j+=2){

			bf = (imIn[j*3][i*3+0] + imIn[(j+1)*3][i*3+0] + imIn[j*3][(i+1)*3+0] + imIn[(j+1)*3][(i+1)*3+0]) / 4;
			fv = (imIn[j*3][i*3+0] + imIn[(j+1)*3][i*3+0] - imIn[j*3][(i+1)*3+0] - imIn[(j+1)*3][(i+1)*3+0]) / 2;
			fh = (imIn[j*3][i*3+0] - imIn[(j+1)*3][i*3+0] + imIn[j*3][(i+1)*3+0] - imIn[(j+1)*3][(i+1)*3+0]) / 2;
			thf = (imIn[j*3][i*3+0] - imIn[(j+1)*3][i*3+0] - imIn[j*3][(i+1)*3+0] + imIn[(j+1)*3][(i+1)*3+0]);

			imOut[j/2*3][i/2*3+0] = bf;
			imOut[(j/2+(imIn.getWidth()/8))*3][i/2*3+0] = fv;
			imOut[j/2*3][(i/2+(imIn.getHeight()/8))*3+0] = fh;
			imOut[(j/2+(imIn.getWidth()/8))*3][(i/2+(imIn.getHeight()/8))*3+0] = thf;

			bf = (imIn[j*3][i*3+1] + imIn[(j+1)*3][i*3+1] + imIn[j*3][(i+1)*3+1] + imIn[(j+1)*3][(i+1)*3+1]) / 4;
			fv = (imIn[j*3][i*3+1] + imIn[(j+1)*3][i*3+1] - imIn[j*3][(i+1)*3+1] - imIn[(j+1)*3][(i+1)*3+1]) / 2;
			fh = (imIn[j*3][i*3+1] - imIn[(j+1)*3][i*3+1] + imIn[j*3][(i+1)*3+1] - imIn[(j+1)*3][(i+1)*3+1]) / 2;
			thf = (imIn[j*3][i*3+1] - imIn[(j+1)*3][i*3+1] - imIn[j*3][(i+1)*3+1] + imIn[(j+1)*3][(i+1)*3+1]);

			imOut[j/2*3][i/2*3+1] = bf;
			imOut[(j/2+(imIn.getWidth()/8))*3][i/2*3+1] = fv;
			imOut[j/2*3][(i/2+(imIn.getHeight()/8))*3+1] = fh;
			imOut[(j/2+(imIn.getWidth()/8))*3][(i/2+(imIn.getHeight()/8))*3+1] = thf;

			bf = (imIn[j*3][i*3+2] + imIn[(j+1)*3][i*3+2] + imIn[j*3][(i+1)*3+2] + imIn[(j+1)*3][(i+1)*3+2]) / 4;
			fv = (imIn[j*3][i*3+2] + imIn[(j+1)*3][i*3+2] - imIn[j*3][(i+1)*3+2] - imIn[(j+1)*3][(i+1)*3+2]) / 2;
			fh = (imIn[j*3][i*3+2] - imIn[(j+1)*3][i*3+2] + imIn[j*3][(i+1)*3+2] - imIn[(j+1)*3][(i+1)*3+2]) / 2;
			thf = (imIn[j*3][i*3+2] - imIn[(j+1)*3][i*3+2] - imIn[j*3][(i+1)*3+2] + imIn[(j+1)*3][(i+1)*3+2]);

			imOut[j/2*3][i/2*3+2] = bf;
			imOut[(j/2+(imIn.getWidth()/8))*3][i/2*3+2] = fv;
			imOut[j/2*3][(i/2+(imIn.getHeight()/8))*3+2] = fh;
			imOut[(j/2+(imIn.getWidth()/8))*3][(i/2+(imIn.getHeight()/8))*3+2] = thf;
		}
	}

	imOut.save(nom);
}

int main(int argc, char **argv)
{
	///////////////////////////////////////// Exemple d'un seuillage d'image
	char cNomImgLue[250], cNomImgEcrite[250];
	int S;
  
	if (argc != 3) 
	{
		printf("Usage: ImageIn.pgm ImageOut.pgm\n"); 
		return 1;
	}
	sscanf (argv[1],"%s",cNomImgLue) ;
	sscanf (argv[2],"%s",cNomImgEcrite);
	
	
	//ImageBase imIn, imOut;
	ImageBase imIn;
	imIn.load(cNomImgLue);

	//ImageBase imG(imIn.getWidth(), imIn.getHeight(), imIn.getColor());

	
	// ImageBase Y = decompositionY(imIn);
	// ImageBase Cr = decompositionCr(imIn);
	// ImageBase Cb = decompositionCb(imIn);
		
	//rassemblement2(imIn, cNomImgEcrite);
	
	decompositionYCrCb3(imIn, cNomImgEcrite);












































	// ///////////////////////////////////////// Exemple de cr�ation d'une image couleur
	// ImageBase imC(50, 100, true);

	// for(int y = 0; y < imC.getHeight(); ++y)
	// 	for(int x = 0; x < imC.getWidth(); ++x)
	// 	{
	// 		imC[y*3][x*3+0] = 200; // R
	// 		imC[y*3][x*3+1] = 0; // G
	// 		imC[y*3][x*3+2] = 0; // B
	// 	}
		
	// imC.save("imC.ppm");
		



	// ///////////////////////////////////////// Exemple de cr�ation d'une image en niveau de gris
	// ImageBase imG(50, 100, false);

	// for(int y = 0; y < imG.getHeight(); ++y)
	// 	for(int x = 0; x < imG.getWidth(); ++x)
	// 		imG[y][x] = 50;

	// imG.save("imG.pgm");




	// ImageBase imC2, imG2;
	
	// ///////////////////////////////////////// Exemple lecture image couleur
	// imC2.load("imC.ppm");
	// ///////////////////////////////////////// Exemple lecture image en niveau de gris
	// imG2.load("imG.pgm");
	
	

	// ///////////////////////////////////////// Exemple de r�cup�ration d'un plan de l'image
	// ImageBase *R = imC2.getPlan(ImageBase::PLAN_R);
	// R->save("R.pgm");
	// delete R;
	


	return 0;
}
