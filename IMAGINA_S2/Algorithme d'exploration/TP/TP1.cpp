#include <stdio.h>
#include <stdlib.h>
#include <fstream>
#include <iostream>
#include <string.h>
#include <vector>
#include <limits>


long maximum(long tab[], int size){
    long max = tab[0];

    for(int i=1; i<size; i++){
        if(tab[i]>max){
            max = tab[i];
        }
    }

    return max;
}


vector<int> ts_move(vector<int> cur, vector<int> tabu_list, int max_length_tabu, int min_neighbors){
    int best-cost = numeric_limits<int>::max();
    vector<int> x_best = cur;
    int i = 0;
    bool accepted = false;

    while(i < min_neighbors){
        x = generate_neighbors(cur);
        if()
    }

}

Vector<int> generate_neighbors(Vector<int> cur, int val){
    
}



int main(int argc, char* argv[]){

    using namespace std;

    ifstream inFile;
    char file[1000], nomFich[250];
    long e1, e2;
    long tab1[8169], tab2[8169];


    if (argc != 2) 
    {
       printf("Usage: file.txt \n"); 
       exit (1) ;
    }

    sscanf (argv[1],"%s",nomFich) ;

    inFile.open(nomFich);
    vector <vector<int>> ptr(8169*8169);

    if (!inFile) {
        cout << "Unable to open file";
        exit(1); // terminate with error
    }
    if(inFile >> file){

        for(int i=0; i<8169; i++){

            inFile >> e1 >> e2;

            ptr[e1].push_back(e2);
            
            
        }
    }

    for(int i=0; i<451; i++){
        for(int j=0; j<ptr[i].size(); j++){
            cout << i << " - " << ptr[i][j] << endl;
        }
    }

  

    



    return 0;
}