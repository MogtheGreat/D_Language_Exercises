/*
	Modify the previous program such that only the users Alice and Bob
	are greeted with their name.
*/

import std.stdio;
import std.string;

void main (string[] args) {

	string name = "";
	writeln ("What is your name?");

	while (name.length == 0) {
		name = readln (). chomp;

		if (name.length == 0)
			writeln ("Error: Empty string not allowed. /n Please input name.");
	}

	/*Switch statement that same as in C/C++.
	Unlike c/c++ can use string in expression/case. */
	switch (name) {
		case "Alice"	:	writeln ("Hello Alice");
							break;
		case "Bob"		:	writeln ("Hello Bob");
							break;
		default			: 	writeln ("Hello");
	}
}
