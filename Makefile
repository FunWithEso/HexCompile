#Simply makefile
SRCFILES=main.cpp parse.cpp

all:
	g++ $(SRCFILES) -o HexCompile

clean:
	rm HexCompile
