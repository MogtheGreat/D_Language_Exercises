/*
	Write a program that asks the user for their name and greets them with their name.
*/

import std.stdio;
import std.string;

void main (string [] args) {
	
	string name = "";				// Creates an empty string variable
	writeln ("What is your name?");

	/* 
		While loop, same as in c and c++. Nothing new.
		.length is a method part of string. No import needed
	*/
	while (name.length == 0) {
		name = readln ().chomp;
		/*
			Use readln() method to get line from user.
			readln() is a function from std.stdio library.\
			.chomp used to remove newline from string
		*/

		if (name.length == 0) // If statement same as in c/c++. Nothing new.
			writeln ("Error: Empty string not allowed. /n Please input name.");
	}
	writeln ("Hello ",  name);

}
