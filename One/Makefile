D = gdc
OFLAG = -o
DFLAGS = -Wall -pedantic -g
.SUFFIXES : .o .d
.d.o:
	$(D) $(DFLAGS) -c $<

main:	main.o
	$(D) main.o $(DFLAGS) $(OFLAG) main

main.o:		main.d

clean:
	rm -f .o main