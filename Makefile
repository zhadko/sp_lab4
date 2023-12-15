CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11

LIB_SOURCES = calculator1.cpp
LIB_OBJECTS = $(LIB_SOURCES:.cpp=.o)

all: libcalculator.a main

libcalculator.a: $(LIB_OBJECTS)
    ar rcs libcalculator.a $(LIB_OBJECTS)

main: calculator2.cpp libcalculator.a
    $(CXX) $(CXXFLAGS) -o main calculator2.cpp -L. -lcalculator

clean:
    rm -f *.o *.a main