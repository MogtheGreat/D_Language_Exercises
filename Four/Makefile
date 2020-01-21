D= gdc
DFLAGS = -Wall -pedantic -Werror -g
OFLAG = -o
.SUFFIXES : .d .o
.d.o:
	$(D) $(DFLAGS) -c $<

main: 	main.o
	$(D) $(DFLAGS) main.o $(OFLAG) main

main.o:	main.d

clean:
	rm -f *.o main