 

## README

---

#### 环境：

- OS:  Kubuntu 22.04.2 LTS x86_64

- gcc version: 11.3.0

- deal.ii version: 9.3.2

#### 编译：

- 在当前proj文件夹内make，即可生成build, imag 和 doc 三个文件夹。

- build 文件夹内有cmake生成的文件（包括代码的可执行文件）。

  imag 文件夹内有图像信息的vtk, gpl, eps 文件和gpl通过gnuplot生成的图片。

  doc 文件夹内有生成的文档

- 使用make clean 可以删除编译生成的除了图像和pdf文件之外的所有文件，使用make clean_all 可以删除编译生成的所有文件

#### 注意：

- latex使用的eps文件为代码直接生成的（要比gpl通过gnuplot生成的eps文件好看），而且我修改了一下step-3.cc ，加入了gpl和eps文件的输出。
- 如果deal.ii 的版本为9.1.0, 请将proj目录下的`CMakeLists.txt`的内容更换为`CMakeLists(备用).txt`, `step-3.cc`的内容更换为`step-3(备用).cc`

- 感谢助教哥哥和老师的指导！
