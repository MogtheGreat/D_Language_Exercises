/*
	Write a guessing game where the user has to guess a secret number.
	After every guesss the program tells the user whether their number was
	too large or too small. At the end the number of tries needed should be
	printed. It counts only as one try if they input the same number multiple
	times consecutively.
*/

import std.stdio;
import guess;

void main (string[] args) {
	int secretNumber = getSecretNumber ();
	int tries = 0;

	playGame (secretNumber, tries);
	writeln ("\nNumber of tries:", tries);
}
