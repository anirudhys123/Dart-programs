class BankAccount {
  double _balance = 0;
  final List<String> _transactions = [];

  double get balance => _balance;
  List<String> get transactions => List.unmodifiable(_transactions);

  void deposit(double amount) {
    if (amount <= 0) throw ArgumentError('Amount must be positive');
    _balance += amount;
    _transactions.add('Deposit: +\$${amount.toStringAsFixed(2)}');
  }

  void withdraw(double amount) {
    if (amount <= 0) throw ArgumentError('Amount must be positive');
    if (amount > _balance) throw StateError('Insufficient funds');
    _balance -= amount;
    _transactions.add('Withdrawal: -\$${amount.toStringAsFixed(2)}');
  }
}

void main() {
  final account = BankAccount();
  try {
    account.deposit(1000);
    account.withdraw(200);
    account.deposit(500);
    account.withdraw(1500); // This will throw error
  } catch (e) {
    print('Error: $e');
  }

  print('Final Balance: \$${account.balance.toStringAsFixed(2)}');
  print('Transaction History:');
  account.transactions.forEach(print);
}
