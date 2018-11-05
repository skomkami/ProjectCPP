CC=g++
CFLAGS=-Werror -I.
DEPS = include/*.h
OBJ = exceptions.o main.o matrix.o obj.o transform.o

all: transformations

%.o: src/%.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

transformations: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

PHONY: clean

clean:
	rm -rf *.o
