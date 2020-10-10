
all: linked-list-c

# Assembly
# linked-list-asm.o: linked-list.asm
# 	nasm -f elf64 -o linked-list-asm.o linked-list.asm

# linked-list-asm: linked-list-asm.o
# 	ld -s -o linked-list-asm linked-list-asm.o

# C
linked-list-c: C/main.c C/node.h C/node.c
	gcc -o linked-list-c C/main.c C/node.c

# C++
# linked-list-c++: linked-list.c++
# 	g++ -o linked-list-c++ linked-list.c++

# Golang
# linked-list-go: linked-list.go
# 	go build -o linked-list-go linked-list.go

# Java
# HelloWorld.class: linked-list.java
# 	javac linked-list.java

# Pascal
# linked-list-pas: linked-list.pas
# 	fpc -olinked-list-pas linked-list.pas

# Meta
clean:
	rm -f linked-list-c
	rm -f linked-list-go
	rm -f linked-list-c++
	rm -f linked-list-pas linked-list.o
	rm -f linked-list-asm linked-list-asm.o
	rm -rf HelloWorld.class

.PHONY: all clean
