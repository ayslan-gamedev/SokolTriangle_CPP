
#include <algorithm>
#include <ostream>
#define SOKOL_IMPL
#define SOKOL_GLCORE
/**/
#include "sokol_gfx.h"
/*#include "sokol_log.h"*/
#include <GLFW/glfw3.h>
#include <iostream>

int main() {
  std::cout << "Initializing window..." << std::endl;

  if (!glfwInit()) {
    std::cout << "Failed to initialize GLFW" << std::endl;
    return -1;
  }

  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

  GLFWwindow *win = glfwCreateWindow(800, 600, "test screen", NULL, NULL);

  if (win == NULL) {
    std::cout << "Failed to create GLFW window" << std::endl;
    glfwTerminate();
    return -1;
  }

  glfwMakeContextCurrent(win);
  std::cout << "GLFW windows initialized successful" << std::endl;

  std::cout << "Initializng the sokol.." << std::endl;

  sg_desc desc = {0};
  sg_setup(&desc);

  if (!sg_isvalid()) {
    std::cerr << "Failed to initialize sokol_gfx\n";
    return -1;
  }

  const float vertices[] = {// positions            // colors
                            0.0f,  0.5f,  0.5f, 1.0f, 0.0f, 0.0f, 1.0f,
                            0.5f,  -0.5f, 0.5f, 0.0f, 1.0f, 0.0f, 1.0f,
                            -0.5f, -0.5f, 0.5f, 0.0f, 0.0f, 1.0f, 1.0f};

  sg_buffer_desc sg_buf_desc = {0};
  sg_buf_desc.data = SG_RANGE(vertices);
  sg_buffer vbuf = sg_make_buffer(&sg_buf_desc);

  std::cout << "buffer initialized!" << std::endl;

  sg_shader_desc shader_desc = {};
  shader_desc.vs.source = "#version 330\n"
                          "layout(location=0) in vec4 position;\n"
                          "layout(location=1) in vec4 color0;\n"
                          "out vec4 color;\n"
                          "void main() {\n"
                          "  gl_Position = position;\n"
                          "  color = color0;\n"
                          "}\n";

  shader_desc.fs.source = "#version 330\n"
                          "in vec4 color;\n"
                          "out vec4 frag_color;\n"
                          "void main() {\n"
                          "  frag_color = color;\n"
                          "}\n";

  sg_shader shd = sg_make_shader(&shader_desc);
  std::cout << "shader initialized!" << std::endl;

  sg_pipeline_desc pipeline_desc = {};
  pipeline_desc.shader = shd;
  pipeline_desc.layout.attrs[0].format = SG_VERTEXFORMAT_FLOAT3;
  pipeline_desc.layout.attrs[1].format = SG_VERTEXFORMAT_FLOAT4;

  sg_pipeline pip = sg_make_pipeline(&pipeline_desc);

  std::cout << "pipeline initialized!" << std::endl;

  sg_bindings bind = {};
  bind.vertex_buffers[0] = vbuf;

  std::cout << "bind initialized!" << std::endl;

  sg_pass pass_action = {0};
  pass_action.swapchain.width = 800;
  pass_action.swapchain.height = 600;

  // Agora você pode começar a renderizar sua cena
  while (!glfwWindowShouldClose(win)) {
    // Iniciar o render pass

    sg_begin_pass(pass_action);

    sg_apply_pipeline(pip);
    sg_apply_bindings(&bind);
    sg_draw(0, 3, 1);

    // Finalizar o render pass
    sg_end_pass();
    sg_commit();

    glfwSwapBuffers(win);
    glfwPollEvents();
  }

  sg_shutdown();
  glfwTerminate();
  return 0;
}
