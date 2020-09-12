
all: hello-world-c hello-world-c++ hello-world-go hello-world-pas HelloWorld.class

hello-world-c: hello-world.c
	gcc -o hello-world-c hello-world.c

hello-world-go: hello-world.go
	go build -o hello-world-go hello-world.go

HelloWorld.class: hello-world.java
	javac hello-world.java

hello-world-c++: hello-world.c++
	g++ -o hello-world-c++ hello-world.c++

hello-world-pas: hello-world.pas
	fpc -ohello-world-pas hello-world.pas

clean:
	rm -f hello-world-c
	rm -f hello-world-go
	rm -f hello-world-c++
	rm -f hello-world-pas
	rm -f hello-world.o
	rm -rf HelloWorld.class

.PHONY: all clean
