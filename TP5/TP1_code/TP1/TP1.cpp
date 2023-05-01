// Include standard headers
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <vector>

// Include GLEW
#include <GL/glew.h>

// Include GLFW
#include <GLFW/glfw3.h>
GLFWwindow *window;

// Include GLM
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

using namespace glm;
using namespace std;

#include <common/Entity.h>
#include <common/EntityRoot.h>
#include <common/Sphere.h>
#include <common/Terrain.h>
#include <common/objloader.hpp>
#include <common/shader.hpp>
#include <common/skybox.h>
#include <common/vboindexer.hpp>
#include <common/cube.h>

void processInput(GLFWwindow *window);
void framebuffer_size_callback(GLFWwindow *window, int width, int height);

// settings
const unsigned int SCR_WIDTH = 800;
const unsigned int SCR_HEIGHT = 600;

// camera
glm::vec3 cameraPosNormal = glm::vec3(0.0f, 0.0f, 3.0f);
glm::vec3 cameraPosLibre = glm::vec3(0.45f, 0.7f, 6.5f);
glm::vec3 cameraPosOrbit = glm::vec3(0.0f, 0.0f, 3.0f);
glm::vec3 cameraFront = glm::vec3(0.0f, 0.0f, -1.0f);
glm::vec3 cameraUp = glm::vec3(0.0f, 1.0f, 0.0f);
glm::vec3 cameraTarget = glm::vec3(0.0f, 0.0f, 0.0f);
glm::vec3 cameraOrbitTarget = glm::vec3(0., 0., 0.);

bool collision = false;
vec3 position_terrain_1 = vec3(2., 0., 0.);
vec3 position_terrain_2 = vec3(2., 0., 0.);
vec3 position_terrain_3 = vec3(2., 0., 0.);

int poids_cube = 2;

float v0_angle = 45.0f;
vec3 speedVector = vec3(2 * cos(v0_angle), 2 * sin(v0_angle), 0.);
vec3 gravite = vec3(0., -poids_cube * 9.81, 0.);
vec3 acceleration = vec3(gravite.x / poids_cube, gravite.y / poids_cube,
                         gravite.z / poids_cube);

vec3 normale_au_terrain;

bool firstMouse = true;
float lastX = 800.0f / 2.0;
float lastY = 600.0 / 2.0;
float fov = 45.0f;
float rotation_speed = 0.01f;

// timing
float deltaTime = 0.0f; // time between current frame and last frame
float lastFrame = 0.0f;

// rotation
float angle = 0.;
float zoom = 1.;

GLuint programID;

glm::mat4 ViewMatrix;
glm::mat4 ProjectionMatrix;

cube Cube;

std::vector<std::string> faces1 = {"arch/left.png", "arch/right.png",
                                   "arch/up.png", "arch/down.png",
                                   "arch/front.png", "arch/back.png"};

std::vector<std::string> faces2 = {"nebuleuse/left.png", "nebuleuse/right.png",
                                   "nebuleuse/up.png", "nebuleuse/down.png",
                                   "nebuleuse/front.png", "nebuleuse/back.png"};

std::vector<std::string> faces3 = {"ciel/left.png", "ciel/right.png",
                                   "ciel/up.png", "ciel/down.png",
                                   "ciel/front.png", "ciel/back.png"};

std::vector<std::string> faces4 = {"shine/left.png", "shine/right.png",
                                   "shine/up.png", "shine/down.png",
                                   "shine/front.png", "shine/back.png"};

std::vector<std::string> faces5 = {"skyhsky/left.png", "skyhsky/right.png",
                                   "skyhsky/up.png", "skyhsky/down.png",
                                   "skyhsky/front.png", "skyhsky/back.png"};

std::vector<std::string> faces6 = {"skype/left.png", "skype/right.png",
                                   "skype/up.png", "skype/down.png",
                                   "skype/front.png", "skype/back.png"};

std::vector<std::string> faces7 = {"tron/left.png", "tron/right.png",
                                   "tron/up.png", "tron/down.png",
                                   "tron/front.png", "tron/back.png"};
std::vector<glm::vec3> skVertices;
vector<unsigned short> indices;

vec3 position_cube;
bool movePlan;

int main(void)
{
  // Initialise GLFW
  if (!glfwInit())
  {
    fprintf(stderr, "Failed to initialize GLFW\n");
    getchar();
    return -1;
  }

  glfwWindowHint(GLFW_SAMPLES, 4);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT,
                 GL_TRUE); // To make MacOS happy; should not be needed
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

  // Open a window and create its OpenGL context
  window = glfwCreateWindow(2048, 1500, "TP1 - GLFW", NULL, NULL);
  if (window == NULL)
  {
    fprintf(stderr,
            "Failed to open GLFW window. If you have an Intel GPU, they are "
            "not 3.3 compatible. Try the 2.1 version of the tutorials.\n");
    getchar();
    glfwTerminate();
    return -1;
  }
  glfwMakeContextCurrent(window);

  // Initialize GLEW
  glewExperimental = true; // Needed for core profile
  if (glewInit() != GLEW_OK)
  {
    fprintf(stderr, "Failed to initialize GLEW\n");
    getchar();
    glfwTerminate();
    return -1;
  }

  // Ensure we can capture the escape key being pressed below
  glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);
  // Hide the mouse and enable unlimited mouvement
  //  glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

  // Set the mouse at the center of the screen
  glfwPollEvents();
  glfwSetCursorPos(window, 2048 / 2, 1500 / 2);

  // Dark blue background
  glClearColor(0.8f, 0.8f, 0.8f, 0.0f);

  // Enable depth test
  glEnable(GL_DEPTH_TEST);
  // Accept fragment if it closer to the camera than the former one
  glDepthFunc(GL_LESS);

  // Cull triangles which normal is not towards the camera
  // glEnable(GL_CULL_FACE);

  GLuint VertexArrayID;
  glGenVertexArrays(1, &VertexArrayID);
  glBindVertexArray(VertexArrayID);

  // Create and compile our GLSL program from the shaders
  programID = LoadShaders("vertex_shader.glsl", "fragment_shader.glsl");

  float size = 30.f;

  skVertices.push_back(vec3(-size, size, size));
  skVertices.push_back(vec3(size, size, size));
  skVertices.push_back(vec3(-size, -size, size));
  skVertices.push_back(vec3(size, -size, size));
  skVertices.push_back(vec3(size, size, -size));
  skVertices.push_back(vec3(size, -size, -size));
  skVertices.push_back(vec3(-size, size, -size));
  skVertices.push_back(vec3(-size, -size, -size));

  indices.push_back(0);
  indices.push_back(1);
  indices.push_back(2);
  indices.push_back(1);
  indices.push_back(3);
  indices.push_back(2);

  indices.push_back(1);
  indices.push_back(4);
  indices.push_back(3);
  indices.push_back(4);
  indices.push_back(5);
  indices.push_back(3);

  indices.push_back(4);
  indices.push_back(6);
  indices.push_back(5);
  indices.push_back(6);
  indices.push_back(7);
  indices.push_back(5);

  indices.push_back(6);
  indices.push_back(0);
  indices.push_back(7);
  indices.push_back(0);
  indices.push_back(2);
  indices.push_back(7);

  indices.push_back(2);
  indices.push_back(3);
  indices.push_back(7);
  indices.push_back(3);
  indices.push_back(5);
  indices.push_back(7);

  indices.push_back(0);
  indices.push_back(1);
  indices.push_back(6);
  indices.push_back(1);
  indices.push_back(4);
  indices.push_back(6);

  EntityRoot Racine;

  std::vector<std::vector<std::string>> faces;
  faces.push_back(faces1);
  faces.push_back(faces2);
  faces.push_back(faces3);
  faces.push_back(faces4);
  faces.push_back(faces5);
  faces.push_back(faces6);
  faces.push_back(faces7);
  skybox SK(faces, skVertices, indices, 2);
  Racine.addChildren(SK);

  string textureTerrain("rock.png");
  string heightmap("Heightmap_Rocky.png");
  string cubepath("cube.off");
  string textureCube("mars.jpg");
  Terrain terrain1(16, 4, 2, textureTerrain, heightmap, 1, programID);
  float offset = terrain1.FindMaxZ();
  Terrain terrain2(terrain1.sommets, terrain1.indices, offset, textureTerrain, heightmap, 1, programID);
  Terrain terrain3(terrain2.sommets, terrain2.indices, offset, textureTerrain, heightmap, 1, programID);
  Cube = cube(1, 0.2, 0.2, 0.2);
  SK.addChildren(terrain1);
  terrain1.transform.updateTranslate(position_terrain_1);

  terrain1.addChildren(terrain2);
  terrain2.addChildren(terrain3);

  Racine.addChildren(Cube);
  Cube.transform.position = vec3(0.4, 0., 4.);
  position_cube = vec3(0.4, 0., 4.);
  Cube.transform.updateTranslate(vec3(0.4, 0., 4.));

  vec3 v1 = terrain1.sommets[terrain1.indices[0]] - terrain1.sommets[terrain1.indices[1]];
  vec3 v2 = terrain1.sommets[terrain1.indices[0]] - terrain1.sommets[terrain1.indices[2]];
  normale_au_terrain = cross(v1, v2);
  normale_au_terrain = normalize(normale_au_terrain);

  glUseProgram(programID);
  GLuint LightID = glGetUniformLocation(programID, "LightPosition_worldspace");

  double lastTime = glfwGetTime();
  int nbFrames = 0;

  ViewMatrix = glm::mat4(1.f);
  ProjectionMatrix = glm::mat4(1.f);
  movePlan = false;

  do
  {

    float currentFrame = glfwGetTime();
    deltaTime = currentFrame - lastFrame;
    lastFrame = currentFrame;

    processInput(window);

    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // Use our shader
    glUseProgram(programID);

    ProjectionMatrix = glm::perspective(glm::radians(fov), (float)4 / (float)3, 0.1f, 100.f);
    ViewMatrix = glm::lookAt(cameraPosLibre, cameraPosLibre + cameraFront, cameraUp);

    Racine.updateSelfAndChild();
    Racine.drawEntity(programID);

    if (movePlan)
    {
      float move = -0.05;
      terrain1.InfinitePlane(move);
      terrain2.InfinitePlane(move);
      terrain3.InfinitePlane(move);
    }

    float maX1 = terrain1.FindMinZ();
    float maX2 = terrain2.FindMinZ();
    float maX3 = terrain3.FindMinZ();

    if ((maX1) > Cube.transform.position.z)
    {
      terrain1.InfinitePlane(3 * offset);
    }
    if ((maX2) > Cube.transform.position.z)
    {
      terrain2.InfinitePlane(3 * offset);
    }
    if ((maX3) > Cube.transform.position.z)
    {
      terrain3.InfinitePlane(3 * offset);
    }

    if (collision)
    {
      vec3 velocity = speedVector + acceleration * deltaTime;
      position_cube = position_cube + speedVector * deltaTime + acceleration * deltaTime * deltaTime;
      speedVector = velocity;
      if (position_cube.y < terrain1.sommets[0][1] || position_cube.y < terrain2.sommets[0][1] || position_cube.y < terrain3.sommets[0][1])
      {
        speedVector = vec3(0., 0., 0.);
        // speedVector = speedVector - 2 * dot(normale_au_terrain, speedVector) * normale_au_terrain;
        position_cube = vec3(position_cube.x, 0., position_cube.z);
      }

      Cube.transform.updateTranslate(vec3(0, speedVector.y * deltaTime, 0));
    }

    glUniformMatrix4fv(glGetUniformLocation(programID, "view"), 1, GL_FALSE, &ViewMatrix[0][0]);
    glUniformMatrix4fv(glGetUniformLocation(programID, "projection"), 1, GL_FALSE, &ProjectionMatrix[0][0]);

    glfwSwapBuffers(window);
    glfwPollEvents();

  } while (glfwGetKey(window, GLFW_KEY_ESCAPE) != GLFW_PRESS &&
           glfwWindowShouldClose(window) == 0);

  terrain1.clearBuffers();
  terrain2.clearBuffers();
  terrain3.clearBuffers();

  glDeleteProgram(programID);
  glDeleteVertexArrays(1, &VertexArrayID);

  glfwTerminate();

  return 0;
}

void processInput(GLFWwindow *window)
{
  if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
    glfwSetWindowShouldClose(window, true);

  float cameraSpeed = static_cast<float>(2.5 * deltaTime);

  if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
    cameraPosLibre -= cameraSpeed * cameraFront;

  if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
  {
    cameraPosLibre += cameraSpeed * cameraFront;
  }

  if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
    cameraPosLibre -=
        glm::normalize(glm::cross(cameraFront, cameraUp)) * cameraSpeed;

  if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
    cameraPosLibre +=
        glm::normalize(glm::cross(cameraFront, cameraUp)) * cameraSpeed;

  if (glfwGetKey(window, GLFW_KEY_Z) == GLFW_PRESS)
    cameraPosLibre += cameraSpeed * cameraUp;

  if (glfwGetKey(window, GLFW_KEY_X) == GLFW_PRESS)
    cameraPosLibre -= cameraSpeed * cameraUp;

  if (glfwGetKey(window, GLFW_KEY_SPACE) == GLFW_PRESS)
  {
    collision = true;
    speedVector = vec3(0., 2 * sin(v0_angle), -2 * cos(v0_angle));
    position_cube = Cube.transform.position;
  }

  if (glfwGetKey(window, GLFW_KEY_P) == GLFW_PRESS)
  {
    movePlan = true;
  }
}

void framebuffer_size_callback(GLFWwindow *window, int width, int height)
{
  glViewport(0, 0, width, height);
}
