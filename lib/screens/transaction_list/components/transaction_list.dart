import 'package:bytebank/models/transaction.dart';
import 'package:bytebank/models/transactions.dart';
import 'package:bytebank/screens/transaction_list/components/transaction_list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Transactions>(builder: (context, information, child) {
      return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: information.transactions.length,
        itemBuilder: (BuildContext context, int index) {
          return TransactionListItem(information.transactions[index]);
        },
      );
    });
  }
}
