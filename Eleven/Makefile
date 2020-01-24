D = gdc
DFLAGS = -Wall -pedantic -Werror -g
DEBUG = -oftest -w -fdebug
OFLAG = -o
.SUFFIXES : .d .o
.d.o:
	$(D) $(DFLAGS) -c $<

main:	main.o
	$(D) $(DFLAGS) $^ $(OFLAG) $@

debug:	main.d
	$(D) $(DFLAGS) $(DEBUG) $^ $(OFLAG) $@

runDebug: debug.txt debug
	./debug > debug.txt

debug.txt:
	touch debug.txt

main.o: 	main.d

clean:
	rm -f *.o main debug debug.txt
