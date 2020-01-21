D = gdc
DFLAGS = -Wall -Werror -pedantic -g #‘-Werror=format-security’ is not valid for D
OFLAG = -o
.SUFFIXES : .d .o
.d.o:
	$(D) $(DFLAGS) -c $<

main:	main.o
	$(D) $(DFLAGS) main.o $(OFLAG) main

main.o: main.d

test: test.cpp
	g++ test.cpp -o test

clean:
	rm -f *.o main
