# 懒人C项目Makefile

以下内容由chatGPT生成

这个Makefile是可供用户配置的，并支持不同的操作系统。默认情况下，它使用gcc编译器，但你可以通过修改CC变量来更改为你所需的编译器。

要使用这个Makefile，请按照以下步骤进行操作：

1. 将CC变量设置为你所需编译器的路径。默认情况下，它设置为/usr/bin/gcc。如果你使用的是Windows系统，你可以取消注释第二个CC行，并提供你的GCC编译器路径。
2. 将PROJECT变量设置为你的项目名称。
3. 通过修改FILES_PATH变量来指定源文件和头文件所在的目录。默认情况下，它设置为当前目录（./）。
4. Makefile将自动查找指定目录中的所有源文件（*.c）和头文件（*.h）。
5. Makefile还从找到的文件中提取包含目录，并将它们设置为包含标志，使用INC_DIRS变量。
6. 要编译项目，只需在终端中运行make all。这将使用指定的编译器编译源文件、头文件和包含目录，并输出带有PROJECT变量中指定名称的可执行文件。
7.要清理项目，运行make clean。这将删除生成的可执行文件。

请注意，这个Makefile支持Windows、Linux和macOS操作系统。它会自动检测操作系统，并使用适当的命令来清理项目。
