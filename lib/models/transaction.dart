
class Transaction {
  final String name;

  // double has problems with precision
  final double amount;

  Transaction(this.name, this.amount);

  @override
  String toString() {
    return "Transaction[$name $amount]";
  }
}
