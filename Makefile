CXX:=g++
STD:=-std=c++14
CFLAGS:=-Wall -Werror -Wextra -Weffc++ -pedantic
DEBUG_FLAGS:=-g

SRC:=$(wildcard *.cpp)
TRGT:=main.exe

$(TRGT): $(OBJ)
	$(CXX) $(OBJ) -o $@

%.o: %.cpp
	$(CXX) $(STD) $(DEBUG_FLAGS) $(CFLAGS) -c $< -o $@

clean:
	rm -rf *.o $(TRGT) test_output

test: $(TRGT)
	contest contest.yaml

.PHONY: all clean setup test
