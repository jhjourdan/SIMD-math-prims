all:
	g++ test_fun.cpp -o test_fun -Wall -W -O3 -std=c++11 -march=native

clean:
	rm -f test_fun

.PHONY: all clean
