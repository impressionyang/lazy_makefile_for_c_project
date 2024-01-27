# A Makefile in C project for lazy developer

This Makefile is designed to be user-configurable and supports different operating systems. It uses the gcc compiler by default, but you can change it to your desired compiler by modifying the CC variable.

To use this Makefile, follow these steps:

1. Set the CC variable to the path of your desired compiler. By default, it is set to /usr/bin/gcc. If you're on Windows, you can uncomment the second CC line and provide the path to your GCC compiler.
2. Set the PROJECT variable to the name of your project.
3. Specify the directories where your source files and header files are located by modifying the FILES_PATH variable. By default, it is set to the current directory (./).
4. The Makefile will automatically find all the source files (*.c) and header files (*.h) within the specified directories.
5. The Makefile also extracts the include directories from the found files and sets them as include flags using the INC_DIRS variable.
6. To compile the project, simply run make all in the terminal. This will compile the source files, headers, and include directories using the specified compiler and output the executable file with the name specified in the PROJECT variable.
7.To clean the project, run make clean. This will remove the generated executable file.

Please note that this Makefile supports Windows, Linux, and macOS operating systems. It automatically detects the operating system and uses the appropriate commands for cleaning the project.
