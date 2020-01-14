CXX:=g++
STD:=-std=c++14
CFLAGS:=-Wall -Werror -Wextra -Weffc++ -pedantic
DEBUG_FLAGS:=-g

main.exe: main.o
	$(CXX) $< -o $@

main.o: main.cpp
	$(CXX) $(STD) $(DEBUG_FLAGS) $(CFLAGS) -c $< -o $@

clean:
	rm -rf main.o main.exe test_output

test: $(TRGT)
	contest contest.yaml

.PHONY: clean test
