/* This may look like C code, but it is really -*- C -*-
 
   Copyright (C) 1998 LIRMM
 
   Author: Christophe Fiorio <fiorio@lirmm.fr>
   This is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.
 
   This sofware is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
 
   You may have received a copy of the GNU General Public License along
   with GNU Emacs; see the file COPYING.  If not, write to the Free
   Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
 
  @(#) $Id: pgm2.c,v 1.1 2000/03/21 19:12:20 fiorio Exp $
 
  $Log: pgm2.c,v $
  Revision 1.1  2000/03/21 19:12:20  fiorio
  Initial revision


*/

#ifndef pgm2_c
#define pgm2_c

#include "pgm_basic_io.h"
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

/*-----------------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------------*/
/*                                                                                   */
/*  functions' implementation                                                        */
/*                                                                                   */
/*-----------------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------------*/

unsigned char* remplissage_mat(unsigned char* mat, int w, int h, int size){


}

int distance_man(int x1, int y1, int x2, int y2){
  return abs(y2 - y1) + abs(x2 - x1);
}

/*double distance_centre(double x1, double y1, double x2, double y2){
  return(sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2)));
}*/

int main(int argc, const char* argv[])
{
  int ret = -1;
  unsigned char* img = NULL;
  FILE* fichier = NULL;
  FILE* sortie = NULL;
  int w = 0;
  int h = 0;
  unsigned char* mat = NULL;
  //unsigned char* mat2 = NULL;

  mat = (unsigned char*) malloc(441*sizeof(unsigned char));
  //mat2 = (unsigned char*) malloc(9*sizeof(unsigned char));


  mat[10+21*10] = 0;
  //mat[10+21*9] = 128;
  //mat[10+21*11] = 128;
  //mat[9+21*10] = 128;
  //mat[11+21*10] = 128;
  
  if(argc<3){
    printf("ERREUR -- usage :\n");
    printf("%s file_name\n",argv[0]);
  }
  else{
    fichier = fopen(argv[1],"r");
    sortie = fopen(argv[2], "w");
    if(fichier!=NULL){
      img = litPGM(fichier,&w,&h);
      w = 21;
      h = 21;

      for(int i=0; i<h; i++){

        for(int j = 0; j<w; j++)
        {
          printf("%d\n",distance_man(i, j, 10, 10));
          if(distance_man(i, j, 10, 10) == 1){
            mat[i+w*j] = 128;
          }else if(distance_man(i, j, 10, 10) == 0){
             mat[i+w*j] = 255;
          }else if(distance_man(i, j, 10, 10) < 10){
            mat[i+w*j] = 64;
          }
        }
        
        
        //printf("%d\n",img[i]);
      }
      if(img!=NULL){
	        if( (fichier=ecritPGM(sortie,mat,w,h)) != NULL ) ret = 0;
      }
    }
  }
  return ret;
}


#endif
