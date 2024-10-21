cmake_minimum_required(VERSION 3.23)  # Define a versão mínima do CMake

# Nome do projeto e suas propriedades
project(
    Triangulo              # Nome do projeto
    VERSION 0.1.0         # Versão do projeto
    LANGUAGES CXX         # Linguagem usada
)

include(cmake/base.cmake)

# Diretórios de código-fonte e cabeçalho
set(SOURCE_DIR ${CMAKE_SOURCE_DIR}/src)    # Diretório para os arquivos fonte
set(INCLUDE_DIR ${CMAKE_SOURCE_DIR}/include) # Diretório para os cabeçalhos

find_package(glfw3 REQUIRED)
#find_package(sokol REQUIRED)

# Define um executável com base no nome do projeto
add_executable(${PROJECT_NAME} ${SOURCE_DIR}/main.cpp)

# Inclui diretórios para cabeçalhos
target_include_directories(${PROJECT_NAME}
    PRIVATE
        ${INCLUDE_DIR}
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE
    glfw GL
)


# Definindo padrões de aviso padrão
set(CMAKE_CXX_STANDARD 20)  # Define o padrão do C++ (C++11 neste caso)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF) # Desativa extensões específicas do compilador

# Mensagens de configuração
message(STATUS "Configuring project: ${PROJECT_NAME} version ${PROJECT_VERSION}")
message(STATUS "Source directory: ${SOURCE_DIR}")
message(STATUS "Include directory: ${INCLUDE_DIR}")

# Habilitando CCache para otimização de compilação (opcional)
find_program(CCACHE_PROGRAM ccache)
if(CCACHE_PROGRAM)
    message(STATUS "CCache found! Enabling CCache.")
    set_property(GLOBAL PROPERTY CMAKE_CXX_COMPILER_LAUNCHER "${CCACHE_PROGRAM}")
endif()

# Se desejar usar sanitizadores em modo Debug
if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    message(STATUS "Enabling sanitizers...")
    set(SANITIZER_FLAGS -fsanitize=address,undefined,leak -fno-omit-frame-pointer)
    target_compile_options(${PROJECT_NAME} PRIVATE "${SANITIZER_FLAGS}")
    target_link_options(${PROJECT_NAME} PRIVATE "${SANITIZER_FLAGS}")
endif()

