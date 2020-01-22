D = gdc
DFLAGS = -Wall -pedantic -Werror -g
OFLAG = -o
.SUFFIXES : .d .o
.d.o:
	$(D) $(DFLAGS) -c $<

main:	main.o guess.o
	$(D) $(DFLAGS) $^ $(OFLAG) $@

main.o:	main.d

guess.o: guess.d

clean:
	rm -f *.o main
