CC := g++
DEBUG := -g
CFLAGS := -std=c++11
LFLAGS := -Wall -L.-lconsole

SOURCEDIR := src
SOURCES := $(shell find $(SOURCEDIR) -name '*.cpp')
OBJS := $(BUILDDIR)/main.o $(BUILDDIR)/libf.o $(BUILDDIR)/libc.o

BINARY := Game

.PHONY: clean

p1:
	$(CC) $(LFLAGS) $(CFLAGS) $(SOURCES) -o $(BINARY)

p2:
	$(CC) $(LFLAGS) $(CFLAGS) $(SOURCES) $(DEBUG) -o $(BINARY)

all: p1

debug: p2

run: all
	./$(BINARY)

clean:
	\rm ./$(BINARY)

distclean: clean
