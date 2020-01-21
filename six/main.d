/*
	Write a program that asks the user for a number n and gives them the
	possibility to choose between computing the sum and computing the
	product of 1, ... , n.
*/

import std.stdio;

/*
	Get user choice using getChar method.
	Param: N/A
	Return: a dchar
	Note:
		getChar returns an int which is 32 bits. Regular char type is 8 bits.
	Using dchar which is 32 bits.
*/
dchar getChoice ();

/*
	Prints user choice to console.
	S to sum all the numbers from 1 to N
	P to get the product of all numbers from 1 to N
	Q nothing happens.
	Param:
		choice 		- Should be s, p, or q.
		number 		- any number 1 or greater
	Return: N/A
*/
void printChoice(dchar choice, int number);

void main (string [] args) {
	int number = 0;
	int sum = 0;
	int product = 1;

	while (number <= 0){
		writeln ("Please enter a number greater than 0.");
		readf ("%d", &number);
		getchar();			// Used to clear newline char in buffer
	}

	dchar choice = getChoice (); // Get user choice for getting the sum of number or product of numbers
	printChoice (choice);	// Prints the sum or the product of the numbers
	writeln ("Good bye!");
}

dchar getChoice () {
	bool chosen = false;
	dchar choice;

	while (!chosen) {
		writeln ("Press s to sum the numbers from 1 to n.", 
				 "\nPress p to compute the product from 1 to n.",
				 " \nPress q to quit the program.");

		choice = getchar ();
		getchar ();	// Gets the newline char from buffer
		
		switch (choice) {
			case 's'	:	chosen = true; 			//Sum the numbers
							break;
			case 'p'	:	chosen = true;			//Product of all numbers
							break;
			case 'q'	:	chosen = true;			//Quit the program
							break;
			default 	: chosen = false;
		}
	}

	return choice;
}

void printChoice (dchar choice, int number) {
	if (choice == 's') {
		for (int i = 1; i <= number; i++)
			sum += i;

		writeln ("Sum is: ", sum);
	}
	else if (choice == 'p') {
		for (int i = 1; i <= number; i++)
			product *= i;

		writeln ("Product is: ", product);
	}
}
