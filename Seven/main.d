/*
	Write a program that prints a multiplication table for numbers up to 12.
*/

import std.stdio;

void main (string[] args) {
	for (int i = 1; i <= 12; i++) {
		for (int j = 1; j <= 12; j++) {
			write((i * j), "\t"); 	// Same as writeln but does not output "\n"
		}
		writeln (); //Shift to new line.
	}
}
