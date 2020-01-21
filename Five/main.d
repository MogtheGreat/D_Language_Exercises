/*
	Modify the previous program such that only multiples of three or
	five are considered in the sum, e.g. 3,5,6,9,10,12,15 for n = 17
*/

import std.stdio;

void main (string[] args) {
	int number = 0;
	int sum = 0;

	writeln ("Please enter a number greater than 0.");
	readf ("%d", &number);

	for (int i = 1; i <= number; i++) {
		if (i % 3 == 0) {
			sum += i;
			writeln ("Sum of number divisible by 3 from 1 to ", i, " is ", sum);
		}
		else if (i % 5 == 0) {
			sum += i;
			writeln ("Sum of number divisible by 5 from 1 to ", i, " is ", sum);
		}
	}
}
