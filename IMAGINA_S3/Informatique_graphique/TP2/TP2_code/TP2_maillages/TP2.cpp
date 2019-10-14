// Include standard headers
#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <iostream>

// Include GLEW
#include <GL/glew.h>

// Include GLFW
#include <GLFW/glfw3.h>
GLFWwindow* window;

// Include GLM
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
using namespace glm;
using namespace std;

#include <common/shader.hpp>
#include <common/texture.hpp>
#include <common/objloader.hpp>
#include <common/vboindexer.hpp>

void compute_triangle_normals (vector<std::vector<unsigned short> > triangles, vector<glm::vec3> indexed_vertices, std::vector<glm::vec3> & triangle_normals);

/******************************************************************************/
/***************           Fonctions à completer         **********************/
/******************************************************************************/
void compute_smooth_vertex_normals (vector<std::vector<unsigned short> > triangles, vector<glm::vec3> indexed_vertices, vector<unsigned short> indices, unsigned int weight_type, std::vector<glm::vec3> & vertex_normals){
    float w = 1.0; // default: uniform weights

/*  cout << "taille indices : " << indices.size() << endl;
    cout << "nombre triangles : " << triangles.size() << endl;  */

    for(int i=0; i<indexed_vertices.size(); i++){

        vector<unsigned short> index_triangles_voisins;

        for(int j=0; j<indices.size(); j+=3){

            if(indices[j] == i || indices[j+1] == i || indices[j+2] == i){

                index_triangles_voisins.push_back(j/3);
                
            }
        }

        
        vector<vector<unsigned short>> triangles_voisins;

        for(int j=0; j<index_triangles_voisins.size(); j++){
            
            triangles_voisins.push_back(triangles[index_triangles_voisins[j]]);
        }

        vector<vec3> triangle_voisins_normals;
        compute_triangle_normals(triangles_voisins, indexed_vertices, triangle_voisins_normals);



        double sx = 0, sy = 0, sz = 0;
        

        for(int j=0; j<triangle_voisins_normals.size(); j++){
            
            vec3 normal(triangle_voisins_normals[j]);

            sx += normal.x;
            sy += normal.y;
            sz += normal.z;
        }

        vec3 vertex_norm(sx/triangle_voisins_normals.size(), sy/triangle_voisins_normals.size(), sz/triangle_voisins_normals.size());

        cout << vertex_norm.x << ", " << vertex_norm.y << ", " << vertex_norm.z << endl;    

        vertex_normals.push_back(vertex_norm);
    }

    

    if (weight_type == 1) { // area weight

    } else if (weight_type == 2) { // angle weight

    }
}

void compute_triangle_normals (vector<std::vector<unsigned short> > triangles, vector<glm::vec3> indexed_vertices, std::vector<glm::vec3> & triangle_normals){

    

    for(int i=0; i<triangles.size(); i++){

        vector<unsigned short> triangle(triangles[i]);

        vec3 a = indexed_vertices[triangle[0]];
        vec3 b = indexed_vertices[triangle[1]];
        vec3 c = indexed_vertices[triangle[2]];

        vec3 normal;

        vec3 u(b.x - a.x, b.y - a.y, b.z - a.z);
        vec3 v(c.x - a.x, c.y - a.y, c.z - a.z);

        normal.x = u.y * v.z - u.z * v.y;
        normal.y = u.z * v.z - u.x * v.z;
        normal.z = u.x * v.y - u.y * v.x;

        //cout << normal.x << ", " << normal.y << ", " << normal.z << endl;

        triangle_normals.push_back(normal);
    }
}

void collect_one_ring (std::vector<std::vector<unsigned short> > & one_ring) {

}



void compute_vertex_valences (vector<std::vector<unsigned short> > triangles, vector<glm::vec3> indexed_vertices, vector<unsigned short> indices, vector<std::vector<unsigned short> & valences ) {

    for(int i=0; i<indexed_vertices.size(); i++){

        vector<unsigned short> index_triangles_voisins;

        for(int j=0; j<indices.size(); j+=3){

            if(indices[j] == i || indices[j+1] == i || indices[j+2] == i){

                index_triangles_voisins.push_back(j/3);
                
            }
        }

        
        vector<vector<unsigned short>> triangles_voisins;

        for(int j=0; j<index_triangles_voisins.size(); j++){
            
            triangles_voisins.push_back(triangles[index_triangles_voisins[j]]);
        }

        valences.push_back(triangles_voisins.size());
        
    }

}
/*******************************************************************************/

int main( void )
{
    // Initialise GLFW
    if( !glfwInit() )
    {
        fprintf( stderr, "Failed to initialize GLFW\n" );
        getchar();
        return -1;
    }

    glfwWindowHint(GLFW_SAMPLES, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // To make MacOS happy; should not be needed
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // Open a window and create its OpenGL context
    window = glfwCreateWindow( 1024, 768, "TP2 - Maillages", NULL, NULL);
    if( window == NULL ){
        fprintf( stderr, "Failed to open GLFW window. If you have an Intel GPU, they are not 3.3 compatible. Try the 2.1 version of the tutorials.\n" );
        getchar();
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);

    // Initialize GLEW
    glewExperimental = true; // Needed for core profile
    if (glewInit() != GLEW_OK) {
        fprintf(stderr, "Failed to initialize GLEW\n");
        getchar();
        glfwTerminate();
        return -1;
    }

    // Ensure we can capture the escape key being pressed below
    glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);
    // Hide the mouse and enable unlimited mouvement
    glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

    // Set the mouse at the center of the screen
    glfwPollEvents();
    glfwSetCursorPos(window, 1024/2, 768/2);

    // Dark blue background
    glClearColor(0.0f, 0.0f, 0.4f, 0.0f);

    // Enable depth test
    glEnable(GL_DEPTH_TEST);
    // Accept fragment if it closer to the camera than the former one
    glDepthFunc(GL_LESS);

    // Cull triangles which normal is not towards the camera
    glEnable(GL_CULL_FACE);

    GLuint VertexArrayID;
    glGenVertexArrays(1, &VertexArrayID);
    glBindVertexArray(VertexArrayID);

    // Create and compile our GLSL program from the shaders
    GLuint programID = LoadShaders( "vertex_shader.glsl", "fragment_shader.glsl" );

    // Get a handle for our "MVP" uniform
    GLuint MatrixID = glGetUniformLocation(programID, "MVP");
    GLuint ViewMatrixID = glGetUniformLocation(programID, "V");
    GLuint ModelMatrixID = glGetUniformLocation(programID, "M");

    // Load the texture
    GLuint Texture = loadDDS("uvmap.DDS");

    // Get a handle for our "myTextureSampler" uniform
    GLuint TextureID  = glGetUniformLocation(programID, "myTextureSampler");

    std::vector<unsigned short> indices; //Triangles concaténés dans une liste
    std::vector<std::vector<unsigned short> > triangles;
    std::vector<glm::vec3> indexed_vertices;
    std::vector<glm::vec2> indexed_uvs;
    std::vector<glm::vec3> indexed_normals;

    //Chargement du fichier de maillage
    std::string filename("suzanne.off");
    loadOFF(filename, indexed_vertices, indices, triangles );
    indexed_uvs.resize(indexed_vertices.size(), glm::vec2(1.)); //List vide de UV

    //****************************************************************/
    //Calculer les normales par sommet
    indexed_normals.resize(indexed_vertices.size(), glm::vec3(1.));
    compute_smooth_vertex_normals(triangles, indexed_vertices, indices, 0, indexed_normals);


    vector<glm::vec3> triangle_normals;
    compute_triangle_normals(triangles, indexed_vertices, triangle_normals);
    //****************************************************************/

    // Load it into a VBO

    GLuint vertexbuffer;
    glGenBuffers(1, &vertexbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
    glBufferData(GL_ARRAY_BUFFER, indexed_vertices.size() * sizeof(glm::vec3), &indexed_vertices[0], GL_STATIC_DRAW);

    GLuint uvbuffer;
    glGenBuffers(1, &uvbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, uvbuffer);
    glBufferData(GL_ARRAY_BUFFER, indexed_uvs.size() * sizeof(glm::vec2), &indexed_uvs[0], GL_STATIC_DRAW);

    GLuint normalbuffer;
    glGenBuffers(1, &normalbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, normalbuffer);
    glBufferData(GL_ARRAY_BUFFER, indexed_normals.size() * sizeof(glm::vec3), &indexed_normals[0], GL_STATIC_DRAW);

    // Generate a buffer for the indices as well
    GLuint elementbuffer;
    glGenBuffers(1, &elementbuffer);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, elementbuffer);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(unsigned short), &indices[0] , GL_STATIC_DRAW);

    // Get a handle for our "LightPosition" uniform
    glUseProgram(programID);
    GLuint LightID = glGetUniformLocation(programID, "LightPosition_worldspace");

    // For speed computation
    double lastTime = glfwGetTime();
    int nbFrames = 0;

    do{

        // Measure speed
        double currentTime = glfwGetTime();
        nbFrames++;
        if ( currentTime - lastTime >= 1.0 ){ // If last prinf() was more than 1sec ago
            // printf and reset
            printf("%f ms/frame\n", 1000.0/double(nbFrames));
            nbFrames = 0;
            lastTime += 1.0;
        }

        // Clear the screen
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        // Use our shader
        glUseProgram(programID);

        // Projection matrix : 45 Field of View, 4:3 ratio, display range : 0.1 unit <-> 100 units
        glm::mat4 ProjectionMatrix = glm::perspective(glm::radians(45.0f), 4.0f / 3.0f, 0.1f, 100.0f);
        // Camera matrix
        glm::mat4 ViewMatrix       = glm::lookAt(
                    glm::vec3(0,0,3), // Camera is at (4,3,3), in World Space
                    glm::vec3(0,0,0), // and looks at the origin
                    glm::vec3(0,1,0)  // Head is up (set to 0,-1,0 to look upside-down)
                    );
        // Model matrix : an identity matrix (model will be at the origin)
        glm::mat4 ModelMatrix      = glm::mat4(1.0f);
        glm::mat4 MVP = ProjectionMatrix * ViewMatrix * ModelMatrix;

        // Send our transformation to the currently bound shader,
        // in the "MVP" uniform
        glUniformMatrix4fv(MatrixID, 1, GL_FALSE, &MVP[0][0]);
        glUniformMatrix4fv(ModelMatrixID, 1, GL_FALSE, &ModelMatrix[0][0]);
        glUniformMatrix4fv(ViewMatrixID, 1, GL_FALSE, &ViewMatrix[0][0]);

        glm::vec3 lightPos = glm::vec3(4,4,4);
        glUniform3f(LightID, lightPos.x, lightPos.y, lightPos.z);

        // Bind our texture in Texture Unit 0
        glActiveTexture(GL_TEXTURE0);
        glBindTexture(GL_TEXTURE_2D, Texture);
        // Set our "myTextureSampler" sampler to use Texture Unit 0
        glUniform1i(TextureID, 0);

        // 1rst attribute buffer : vertices
        glEnableVertexAttribArray(0);
        glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
        glVertexAttribPointer(
                    0,                  // attribute
                    3,                  // size
                    GL_FLOAT,           // type
                    GL_FALSE,           // normalized?
                    0,                  // stride
                    (void*)0            // array buffer offset
                    );

        // 2nd attribute buffer : UVs
        glEnableVertexAttribArray(1);
        glBindBuffer(GL_ARRAY_BUFFER, uvbuffer);
        glVertexAttribPointer(
                    1,                                // attribute
                    2,                                // size
                    GL_FLOAT,                         // type
                    GL_FALSE,                         // normalized?
                    0,                                // stride
                    (void*)0                          // array buffer offset
                    );

        // 3rd attribute buffer : normals
        glEnableVertexAttribArray(2);
        glBindBuffer(GL_ARRAY_BUFFER, normalbuffer);
        glVertexAttribPointer(
                    2,                                // attribute
                    3,                                // size
                    GL_FLOAT,                         // type
                    GL_FALSE,                         // normalized?
                    0,                                // stride
                    (void*)0                          // array buffer offset
                    );

        // Index buffer
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, elementbuffer);

        // Draw the triangles !
        glDrawElements(
                    GL_TRIANGLES,      // mode
                    indices.size(),    // count
                    GL_UNSIGNED_SHORT,   // type
                    (void*)0           // element array buffer offset
                    );

        glDisableVertexAttribArray(0);
        glDisableVertexAttribArray(1);
        glDisableVertexAttribArray(2);

        // Swap buffers
        glfwSwapBuffers(window);
        glfwPollEvents();

    } // Check if the ESC key was pressed or the window was closed
    while( glfwGetKey(window, GLFW_KEY_ESCAPE ) != GLFW_PRESS &&
           glfwWindowShouldClose(window) == 0 );

    // Cleanup VBO and shader
    glDeleteBuffers(1, &vertexbuffer);
    glDeleteBuffers(1, &uvbuffer);
    glDeleteBuffers(1, &normalbuffer);
    glDeleteBuffers(1, &elementbuffer);
    glDeleteProgram(programID);
    glDeleteTextures(1, &Texture);
    glDeleteVertexArrays(1, &VertexArrayID);

    // Close OpenGL window and terminate GLFW
    glfwTerminate();

    return 0;
}

