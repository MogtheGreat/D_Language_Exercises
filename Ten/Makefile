D = gdc
DFLAGS = -Wall -pedantic -Werror -g
OFLAG = -o
.SUFFIXES : .d .o
.d.o:
	$(D) $(DFLAGS) -c $<

main:	main.o
	$(D) $(DFLAGS) $^ $(OFLAG) $@

main.o:	main.d

clean:
	rm -f *.o main
