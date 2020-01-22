/*
	Error Message
	- variable tries is shadowing variable guess.playGame.tries
	Translation:
	- variable redeclared.
*/
module guess;
import std.random;
import std.string;
import std.stdio;
import std.conv;

/*
	Auto functions can return value of any type.
	Random () - Seed a random generator with a constant.
	unpredictableSeed makes engines generate different random number sequences every run.
	Note: Both are part of std.random

	Purpose: Generate a secret number for the user to guess.
*/
auto getSecretNumber () {
	auto rand = Random(unpredictableSeed);		// Get random generator with a new seed after each run.
	auto secretNumber = uniform (1, 100, rand);  // generates a uniformly-distributed integer in the range of [1, 100]
	return secretNumber;
}

/*
	Immutable variables determined during the execution of the program.
	Cannot modify.
	ref = return by reference.

	Check to see if guess is correct. Otherwise gives a hint.
*/
void checkGuess (ref bool guessedCorrectly, immutable int secretNumber, immutable int guess) {
	if (guess == secretNumber)
		guessedCorrectly = true;
	else if (guess > secretNumber)
		writeln ("Too large");
	else if (guess < secretNumber)
		writeln ("Too small");
}

/* 	Pure functions cannot access global or static, mutable state save through their arguments
	Increment the number of tries if guess is different from last one.
*/
pure void setTries (ref int tries, ref int lastGuess, immutable int guess) {
	if (guess != lastGuess) {
		tries++;
		lastGuess = guess;
	}
}

/*
	Player guess at the secret number. Game records the number of tries
	the player makes.
*/
void playGame (int secretNumber, ref int tries) {
	bool guessedCorrectly = false;
	int lastGuess = 0;
	int guess = 0;

	while (!guessedCorrectly) {
		writeln ("Please enter a valid number between 1 and 100.");
		string check = readln ().chomp;			//Gets the input minus the newline char. chomp part of std.string
		
		if (isNumeric(check)) {					//Part of std.string
			guess = to!int(check);				//Converts the string to int using to!. Method is part of std.conv
		}
		else {
			writeln ("Invalid input.");
			continue;
		}

		checkGuess (guessedCorrectly, secretNumber, guess);		// Check to see if player correctly guessed secret number
		setTries (tries, lastGuess, guess);
	}
}

