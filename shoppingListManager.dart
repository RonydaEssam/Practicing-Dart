/*
Task: Shopping List Manager
Goal: Practice lists, loops, and user input.

Requirements:
Start with an empty list of strings.
Show the user a menu (use a while loop + switch):
  1 → Add an item
  2 → Remove an item
  3 → Show all items
  4 → Exit
Use try..catch to handle invalid input (like typing letters instead of numbers).
Make sure the list updates correctly as the user adds/removes items.
*/
import 'dart:io';

void main() {
  List<String?> cart = [];
  Map<int, String> options = {
    1: 'Add an item',
    2: 'Remove an item',
    3: 'Show list',
    4: 'Exit',
  };

  print('Welcome to the shopping list!');

  while (true) {
    print('Choose an option from the following:');
    print(options);
    String? userOption = stdin.readLineSync();

    switch (userOption) {
      case '1':
        print('Enter the item yo want to add:');
        String? addItem = stdin.readLineSync();
        cart.add(addItem);
        print('$addItem added to the list.');
        break;
      case '2':
        print('Your list consists of: $cart');
        print('Specify the item you want to remove:');
        String? removeItem = stdin.readLineSync();
        cart.remove(removeItem);
        print('$removeItem removed from list.');
        break;
      case '3':
        print('Your list contains: \n$cart');
        break;
      case '4':
      default:
        print('It was nice to help you, Have a good day!');
        break;
    }
  }
}
