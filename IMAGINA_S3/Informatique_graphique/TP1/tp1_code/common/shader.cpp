#include <stdio.h>
#include <string>
#include <vector>
#include <iostream>
#include <fstream>
#include <algorithm>
#include <sstream>
using namespace std;

#include <stdlib.h>
#include <string.h>

#include <GL/glew.h>

#include "shader.hpp"

GLuint load_shaders(const char * vertex_file_path,const char * fragment_file_path){

	// Create the shaders
        //*** A completer *************/
        //use glCreateShader()
        unsigned int vertex, fragment;
        int success;
        char infoLog[250];

        vertex = glCreateShader(GL_VERTEX_SHADER);
        

        fragment = glCreateShader(GL_FRAGMENT_SHADER);
        

        //**********************/

        // Read the Vertex Shader code from the file
        std::string vertex_shader_code;
        std::ifstream vertex_shader_stream(vertex_file_path, std::ios::in);
        if(vertex_shader_stream.is_open()){
		std::stringstream sstr;
                sstr << vertex_shader_stream.rdbuf();
                vertex_shader_code = sstr.str();
                vertex_shader_stream.close();
	}else{
		printf("Impossible to open %s. Are you in the right directory ? Don't forget to read the FAQ !\n", vertex_file_path);
		getchar();
		return 0;
	}

	// Read the Fragment Shader code from the file
        std::string fragment_shader_code;
        std::ifstream fragment_shader_stream(fragment_file_path, std::ios::in);
        if(fragment_shader_stream.is_open()){
		std::stringstream sstr;
                sstr << fragment_shader_stream.rdbuf();
                fragment_shader_code = sstr.str();
                fragment_shader_stream.close();
	}

        GLint result = GL_FALSE;
        int info_log_length;


        //*** A completer *************/

	// Compile Vertex Shader

	printf("Compiling shader : %s\n", vertex_file_path);
        char const * vertex_source_pointer = vertex_shader_code.c_str();

        //Ajouter ici
	// Check Vertex Shader
        //Ajouter ici
        glShaderSource(vertex, 1, &vertex_source_pointer, NULL);
        glCompileShader(vertex);

        glGetShaderiv(vertex, GL_COMPILE_STATUS, &success);
        if(!success){
                glGetShaderInfoLog(vertex, 512, NULL, infoLog);
                std::cout << "ERROR::SHADER::VERTEX::COMPILATION_FAILED\n" << infoLog << std::endl;
        };

        //**********************/


        //*** A completer *************/

	// Compile Fragment Shader
	printf("Compiling shader : %s\n", fragment_file_path);
        char const * FragmentSourcePointer = fragment_shader_code.c_str();

	// Check Fragment Shader
        glShaderSource(fragment, 1, &FragmentSourcePointer, NULL);
        glCompileShader(fragment);

        glGetShaderiv(vertex, GL_COMPILE_STATUS, &success);
        if(!success){
                glGetShaderInfoLog(fragment, 512, NULL, infoLog);
                std::cout << "ERROR::SHADER::FRAGMENT::COMPILATION_FAILED\n" << infoLog << std::endl;
        };

        //**********************/



        //*** A completer *************/
        // Link the program
	printf("Linking program\n");

        unsigned int ID = glCreateProgram();
        glAttachShader(ID, vertex);
        glAttachShader(ID, fragment);
        glLinkProgram(ID);
        //checkCompileErrors(ID, "PROGRAM");

	// Check the program
        //glGetShaderInfoLog(ID, GL_LINK_Stat)
        //**********************/

        //*** A completer *************/

        //Detacher et supprimer
        glDetachShader(ID, vertex);
        glDetachShader(ID, fragment);
        glDeleteShader(vertex);
        glDeleteShader(fragment);

	

        //******************************/

        //return *program_ID;

        return ID; //A changer
        //******************************/
}


