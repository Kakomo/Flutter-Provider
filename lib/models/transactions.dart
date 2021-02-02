
import 'package:bytebank/models/transaction.dart';
import 'package:flutter/cupertino.dart';

class Transactions extends ChangeNotifier{
  final List<Transaction> _transactions = [];

  List<Transaction> get transactions => _transactions;

  put(Transaction newTransaction){
    transactions.add(newTransaction);

    notifyListeners();
  }
}