
all: hello-world-asm hello-world-c hello-world-c++ hello-world-go hello-world-pas HelloWorld.class

# Assembly
hello-world-asm.o: hello-world.asm
	nasm -f elf64 -o hello-world-asm.o hello-world.asm

hello-world-asm: hello-world-asm.o
	ld -s -o hello-world-asm hello-world-asm.o

# C
hello-world-c: hello-world.c
	gcc -o hello-world-c hello-world.c

# C++
hello-world-c++: hello-world.c++
	g++ -o hello-world-c++ hello-world.c++

# Golang
hello-world-go: hello-world.go
	go build -o hello-world-go hello-world.go

# Java
HelloWorld.class: hello-world.java
	javac hello-world.java

# Pascal
hello-world-pas: hello-world.pas
	fpc -ohello-world-pas hello-world.pas

# Meta
clean:
	rm -f hello-world-c
	rm -f hello-world-go
	rm -f hello-world-c++
	rm -f hello-world-pas hello-world.o
	rm -f hello-world-asm hello-world-asm.o
	rm -rf HelloWorld.class

.PHONY: all clean
