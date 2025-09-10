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

  // take an input from the user
  try {
    while (true) {
      print('Enter your guess here: ');
      String? input = stdin.readLineSync();
      int guess = int.parse(input!);

      if (guess == target) {
        print('Correct answer! $guess is right!');
        break;
      } else if (guess < target) {
        print('Too low, Try again..');
      } else {
        print('Too high, Try again..');
      }
    }
  } catch (e) {
    print('An error occured: $e');
  }
}
