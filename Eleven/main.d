/*
	Write a program that computes the sum of an alternating series where each element of the series is an
	expression of the form ((-1)^(k+1))/(2*k-1) for each value of k from 1 to a million, multiplied by 4. Or, in
	more mathematical notation:

	4 x (Simga k = 1,...., 10^6)((-1)^(k+1)/(2k -1)) = 4 x (1 -1/3 + 1/5 + 1/7 + 1/9 - 1/11 ....)
*/
/*
	Note:
	- debug statement are only compiled into the program when -debug compiler is enabled.
	- Type make debug to compile with -debug
*/

import std.stdio;
import std.math;

void main (string[] args) {
	double sum = 0;
	
	for (int k = 1; k < 1000000; k++) {
		double top = pow (-1, (k+1));
		double bottom = ((2*k)-1);
		debug writeln ("Parts separted: ", top, " / ", bottom);
		
		double value = top/bottom;
		debug writeln ("Fraction form: ", value);
		sum += value;
	}
	
	debug writeln (sum);
	double total = 4 * sum;
	writeln ("The sum of an alternating series where each element of the series is an \nexpression of the form",
			  "(-1)^(k+1)/(2k-1) for each value of k from 1 to a \nmillion, multiplied by 4 is: ", total);
}
