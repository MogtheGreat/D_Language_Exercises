D = gdc
DFLAGS = -Wall -pedantic -g
OFLAG = -o
.SUFFIXES : .o .d
.d.o:
	$(D) $(DFLAGS) -c $<

main:	main.o
	$(D) $(DFLAGS) main.o $(OFLAG) main

main.o:	main.d

clean:
	rm -f *.out *.o main