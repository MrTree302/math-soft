 

## README

---

#### 环境：

- OS:  Kubuntu 22.04.2 LTS x86_64

- gcc version: 11.3.0

- deal.ii version: 9.3.2

#### 编译：

- 在当前proj文件夹内make，即可生成build, imag 和 doc 三个文件夹。
- build 文件夹内有cmake生成的文件（包括代码的可执行文件）。
- imag 文件夹内有图像信息的vtk, gpl, eps 文件。
- doc 文件夹内有生成的文档

#### 注意：

- latex使用的eps文件为代码直接生成的（要比gpl通过gnuplot生成的eps文件好看）
- 如果deal.ii 的版本为9.1.0, 请将proj目录下的CMakeLists.txt的内容更换为

```cmake
##
#  CMake script for the step-3 tutorial program:
##

# Set the name of the project and target:
SET(TARGET "step-3")

# Declare all source files the target consists of. Here, this is only
# the one step-X.cc file, but as you expand your project you may wish
# to add other source files as well. If your project becomes much larger,
# you may want to either replace the following statement by something like
#    FILE(GLOB_RECURSE TARGET_SRC  "source/*.cc")
#    FILE(GLOB_RECURSE TARGET_INC  "include/*.h")
#    SET(TARGET_SRC ${TARGET_SRC}  ${TARGET_INC}) 
# or switch altogether to the large project CMakeLists.txt file discussed
# in the "CMake in user projects" page accessible from the "User info"
# page of the documentation.
SET(TARGET_SRC
  ${TARGET}.cc
  )

# Usually, you will not need to modify anything beyond this point...

CMAKE_MINIMUM_REQUIRED(VERSION 2.8.12)

FIND_PACKAGE(deal.II 9.1.0 QUIET
  HINTS ${deal.II_DIR} ${DEAL_II_DIR} ../ ../../ $ENV{DEAL_II_DIR}
  )
IF(NOT ${deal.II_FOUND})
  MESSAGE(FATAL_ERROR "\n"
    "*** Could not locate a (sufficiently recent) version of deal.II. ***\n\n"
    "You may want to either pass a flag -DDEAL_II_DIR=/path/to/deal.II to cmake\n"
    "or set an environment variable \"DEAL_II_DIR\" that contains this path."
    )
ENDIF()

DEAL_II_INITIALIZE_CACHED_VARIABLES()
PROJECT(${TARGET})
DEAL_II_INVOKE_AUTOPILOT()
```

- 感谢助教哥哥和老师的指导！
