
import 'package:bytebank/models/transaction.dart';
import 'package:bytebank/screens/transaction_list/components/transaction_list_item.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _transactions;

  TransactionList(this._transactions);

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: _transactions.length,
      itemBuilder: (BuildContext context, int index) {
        return TransactionListItem(_transactions[index]);
      },
    );
  }
}
