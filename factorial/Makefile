
all: factorial-asm factorial-c factorial-c++ factorial-go factorial-pas Factorial.class

# Assembly
factorial-asm.o: factorial.asm
	nasm -f elf64 -o factorial-asm.o factorial.asm

factorial-asm: factorial-asm.o
	ld -s -o factorial-asm factorial-asm.o

# C
factorial-c: factorial.c
	gcc -o factorial-c factorial.c

# C++
factorial-c++: factorial.c++
	g++ -o factorial-c++ factorial.c++

# Golang
factorial-go: factorial.go
	go build -o factorial-go factorial.go

# Java
Factorial.class: factorial.java
	javac factorial.java

# Pascal
factorial-pas: factorial.pas
	fpc -ofactorial-pas factorial.pas

# Meta
clean:
	rm -f a.out
	rm -f factorial-c
	rm -f factorial-go
	rm -f factorial-c++
	rm -f factorial-pas factorial.o
	rm -f factorial-asm factorial-asm.o
	rm -rf Factorial.class

.PHONY: all clean
