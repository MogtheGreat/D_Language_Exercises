/*
	Write a program that prints the next 20 leap years.
*/

import std.stdio;

void main (string[] args) {
	int curYear = 2020;
	int numberOfLeapYear = 0;
	bool isLeap = true;

	for (int i = 0; i < int.max, numberOfLeapYear <= 20; i++) {
		isLeap = false;
		
		if (curYear % 4 == 0)
			isLeap = true;
		if (curYear % 100 == 0)
			isLeap = false;
		if (curYear % 400 == 0)
			isLeap = true;

		if (isLeap) {
			writeln (curYear);
			numberOfLeapYear++;
		}
		curYear++;
	}
}
