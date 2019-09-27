//
// Created by Ines Benghezal on 28/02/2019.
//

#include "ImageBase.cpp"
#include <cstdio>
#include <stdio.h>
#include <fstream>
#include <iostream>
#include "ImageBase.h"
#include <bits/stdc++.h>
using namespace std;

int main(int argc, char **argv) {
    char cNomImgLue[250], cNomImgEcrite[250];
    if (argc != 3) {
        printf("Usage: ImageIn.pgm ImageOut.pgm\n");
        return 1;
    }
    sscanf(argv[1], "%s", cNomImgLue);
    sscanf(argv[2], "%s", cNomImgEcrite);
    
    ImageBase imageBase;
    imageBase.load(cNomImgLue);
    ImageBase imageOut(imageBase.getWidth(), imageBase.getHeight(), imageBase.getColor());
    bool abime = true;
    
    while (abime) {
        for (int i = 0; i < imageBase.getHeight(); ++i) {
            for (int j = 0; j < imageBase.getWidth(); ++j) {
                if (imageBase[i][j] == 0) {
                    double sum = 0;
//                    int n = 0;
                    if (imageBase[i - 1][j] != 0) {
                        sum += imageBase[i - 1][j];
//                        n++;
                    }
                    if (imageBase[i + 1][j] != 0) {
                        sum += imageBase[i + 1][j];
//                        n++;
                    }
                    if (imageBase[i - 1][j - 1] != 0) {
                        sum += imageBase[i - 1][j - 1];
//                        n++;
                    }
                    if (imageBase[i - 1][j + 1] != 0) {
                        sum += imageBase[i - 1][j + 1];
//                        n++;
                    }
                    if (imageBase[i + 1][j + 1] != 0) {
                        sum += imageBase[i + 1][j + 1];
//                        n++;
                    }
                    if (imageBase[i + 1][j - 1] != 0) {
                        sum += imageBase[i + 1][j - 1];
//                        n++;
                    }
                    if (imageBase[i][j - 1] != 0) {
                        sum += imageBase[i][j - 1];
//                        n++;
                    }
                    if (imageBase[i][j + 1] != 0) {
                        sum += imageBase[i][j + 1];
//                        n++;
                    }
//                    if (n == 0) n = 1;
                    imageOut[i][j] = static_cast<unsigned char>(sum / 8);
                }else imageOut[i][j] = imageBase[i][j];
            }
        }
        abime = false;
        for (int i = 0; i < imageBase.getHeight(); ++i) {
            for (int j = 0; j < imageBase.getWidth(); ++j) {
                if (imageBase[i][j] == 0) {
                    abime = true;
                    
                }
            }
        }

        if(abime == true){
           for (int i = 0; i < imageBase.getHeight(); ++i) {
            for (int j = 0; j < imageBase.getWidth(); ++j) {
                imageBase[i][j] = imageOut[i][j];
            }
        } 
        }
    }
    
    imageBase.save(cNomImgEcrite);
}
