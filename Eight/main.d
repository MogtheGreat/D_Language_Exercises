/*
	Write a program that prints all prime numbers (Note: If your programming
	language does not support arbitrary size numbers, printing all primes up
	to the largest number you can easily represent is fine too.)
*/
/*
	Algorithm from: https://www.javatpoint.com/prime-number-program-in-cpp
*/
import std.stdio;

void main (string[] args) {
	for (int i = 2; i < int.max; i++) {
		int m = i/2;
		bool flag = true;
		
		for (int j = 2; j <= m; j++) {
			if (i % j == 0) {
				flag = false;
				break;
			}
		}

		if (flag)
			writeln (i);
	}
}
