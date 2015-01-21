CC=g++
LD=ld
CFLAGS=-c -Wall -IOGDF 
LDFLAGS=
LIBRARIES=-L OGDF/_release/ -lOGDF -lpthread 

objects=main.o

all: main

#main: $(objects)
#	$(CC) $(LDFLAGS) $(objects) -o main

main: main.o
	$(CC) $(LDFLAGS) main.o -o main $(LIBRARIES) 

main.o: src/main.cpp
	$(CC) $(CFLAGS) src/main.cpp -o main.o

#%.o : src/%.c
#	$(CC) -c $(CFLAGS) $< -o $@

.PHONY : clean
clean:
	rm -rf *.o main
