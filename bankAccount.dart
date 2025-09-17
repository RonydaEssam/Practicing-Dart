void main() {
  //Create objects (2 persons having bank accounts)
  BankAccount acc1 = BankAccount('Alice', 5200);
  BankAccount acc2 = BankAccount('Sam', 200);

  acc1.displayInfo();
  acc1.deposit(500);
  acc1.withdraw(1000);
  acc2.withdraw(600);
  acc2.withdraw(50);
  acc2.deposit(250);

  acc1.getOwnerName();
  acc2.getOwnerName();

  acc1.getBalance();
  acc2.getBalance();
}

class BankAccount {
  //Attributes
  String? _ownerName;
  double? _balance;

  //Creation of the constructor
  BankAccount(String ownerName, [double initialBalance = 0]) {
    print('Constructor Initialized');
    this._ownerName = ownerName;
    this._balance = initialBalance;
  }

  //Methods
  double deposit(double amount) {
    if (amount > 0) {
      _balance = _balance! + amount;
      print(
        '$_ownerName has deposited $amount, the new balance is: $_balance.',
      );
    } else {
      print('Invalid deposit amount.');
    }
    return _balance!;
  }

  double withdraw(double amount) {
    if (amount > 0 && amount <= _balance!) {
      _balance = _balance! - amount;
      print(
        '$_ownerName has withdrawn $amount, the new balance is: $_balance.',
      );
    } else if (amount < 0) {
      print('Invalid withdrawal amount.');
    } else {
      print('Insufficient funds, action can not be taken.');
    }
    return _balance!;
  }

  double? getBalance() {
    print('Account name: $_ownerName -- Balance: $_balance');
    return _balance;
  }

  String? getOwnerName() {
    print('Account name: $_ownerName');
    return _ownerName;
  }

  void displayInfo() {
    print('$_ownerName has $_balance in the bank account right now.');
  }
}
