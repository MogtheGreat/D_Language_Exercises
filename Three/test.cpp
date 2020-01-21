#include <iostream>

using namespace std;

int main (void) {
	string name = "Alice";

	//Not compile
	switch (name) {
		case "Alice" 	:	cout << "Success!" << endl;
							break;
		default			:	cout << "Not working!" << endl;
	}
}