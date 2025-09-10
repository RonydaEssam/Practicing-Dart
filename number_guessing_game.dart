/*
1. Number Guessing Game
  - Generate a random number between 1 and 100.
  - Let the user guess numbers in a loop (while).
  - Use if..else to check if the guess is too high, too low, or correct.
  - Count how many tries it took.
  - Use try..catch to handle invalid inputs (like letters).
  Practices: loops, if/else, modulus (optional if you add “give a hint if even/odd”), try–catch.
*/
import 'dart:io';
import 'dart:math';

void main() {
  // generating a random number using random from the library dart:math
  Random random = Random();
  int? target = random.nextInt(100) + 1;

  print("Welcome to the Number Guessing Game!");
  print("I'm thinking of a number between 1 and 100...");

  int num_of_tries = 0;

  // take an input from the user
  while (true) {
    print('Enter your guess here: ');
    String? input = stdin.readLineSync();

    try {
      int guess = int.parse(input!);
      num_of_tries++;

      if (guess == target) {
        print('Correct answer! $guess is right!');
        print('You got it right in $num_of_tries attempts.');
        break;
      } else if (guess < target) {
        print('Too low, Try again..');
      } else {
        print('Too high, Try again..');
      }
    } on FormatException {
      print('That was not a number, Try again..');
      continue;
    } catch (e) {
      print('An unexpected error occured: $e');
    }
  }
}
