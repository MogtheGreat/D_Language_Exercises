/*
	Write a program that asks the user for a number n and prints
	the sum of the numbers 1 to n.
*/

import std.stdio;

void main (string[] args) {
	int number = 0;
	int sum = 0;

	writeln ("Please enter a number greater than 0.");
	readf ("%d", &number);

	//for loop. Same as in c/c++. Nothing new.
	for (int i = 1; i <= number; i++){
			sum += i;
			writeln ("Sum of the numbers from 1 to ", i, " is ", sum);
	}

}
