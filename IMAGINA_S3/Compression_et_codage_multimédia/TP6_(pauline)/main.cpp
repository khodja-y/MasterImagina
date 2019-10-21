#include "ImageBase.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "ImageBase.cpp"
#include <iostream>
#include <vector>

using namespace std;



double entropie(char filename[]) {
    ImageBase imIn;
    imIn.load(filename);
    
    double res = 0.0;
    double histo[256] = {0};
    
    for (int i=0; i<imIn.getHeight(); i++) {
        for (int j=0; j<imIn.getWidth(); j++) {
            histo[imIn[i][j]]++;
        }
    }
    
    int size = imIn.getHeight() * imIn.getWidth();
    for (int i=0; i<256; i++) {
        if (histo[i] != 0) {
            res += (histo[i] / size) * log2(histo[i] / size);
        }
    }
    
    return -res;
}


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



bool premier (long n) {
  long d;
  
  if (n % 2 == 0)
    return true;
  for (d = 3; d * d <= n; d = d + 2)
    if (n % d == 0)
      return false;
  return true;
}

int PGCD(int a, int b)
{
    if(a==b)
    {
            return a;        
    }     
    else
    {
        if(a>b)
           return PGCD(a-b, b);
        else
           return PGCD(a, b-a);
    }
}

vector<int> exposants(int p, int q){

	vector<int> expo;
	int phi = (p-1)*(q-1);

	cout << phi << endl;

	for(int i=1; i<phi; i++){
		if(PGCD(i, phi) == 1) expo.push_back(i); 
	}

	return expo;
}

void chiffrementRSA(ImageBase imIn, int e, int p, int q, char nom[]){
	int n = p*q;

	ImageBase imOut(imIn.getWidth(), imIn.getHeight(), false);

	for(int i=0; i<imIn.getHeight(); i++){
		for(int j=0; j<imIn.getWidth(); j++){
			int p = 1;

			for(int k=0; k<e; k++){
				p *= imIn[i][j];
				p = p % n;
			}
			
			imOut[i][j] = p;
		}
	}

	imOut.save(nom);

}


int inverseModulo(int e, int phi){
    int b0 = phi, t, q;
    int x0 = 0, x1 = 1;
    if (phi == 1) return 1;
    while (e > 1) {
        q = e / phi;
        t = phi, phi = e % phi, e = t;
        t = x0, x0 = x1 - q * x0, x1 = t;
    }
    if (x1 < 0) x1 += b0;
    return x1;
    
}

void dechiffrement(ImageBase imIn, int e, int p, int q, char nom[]){
	int n = p * q;
	ImageBase imOut(imIn.getWidth(), imIn.getHeight(), false);
	int phi = (p-1)*(q-1);
	int d = inverseModulo(e, phi);

	for(int i=0; i<imIn.getHeight(); i++){
		for(int j=0; j<imIn.getWidth(); j++){
			int p = 1;

			for(int k=0; k<d; k++){
				p *= imIn[i][j];
				p = p % n;
			}

			imOut[i][j] = p;
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


	/* cout << premier(11) << " - " << premier(23) << endl;
	cout << PGCD(11,23) << endl; */

	/* vector<int> expo = exposants(11,23);
	for(int i=0; i<expo.size(); i++){
		cout << i << "-" << expo[i] << endl;
	} */

	chiffrementRSA(imIn, 17, 11, 23, cNomImgEcrite);

	/* int phi = (11-1)*(23-1);
	cout << inverseModulo(17, 220) << endl; */

	//dechiffrement(imIn, 17, 11, 23, cNomImgEcrite);

	//cout << entropie(cNomImgLue) << endl;

	
	
	


	//Xor(imIn, cNomImgEcrite);

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
