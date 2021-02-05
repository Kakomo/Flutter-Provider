import 'package:bytebank/components/no_transactions_card.dart';
import 'package:bytebank/models/transactions.dart';
import 'package:bytebank/screens/transaction_list/components/transaction_list_item.dart';
import 'package:bytebank/screens/transaction_list/transaction_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LatestTransactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Latest Transactions',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Consumer<Transactions>(builder: (context, transactions, child) {
          int size = 2;
          final _latestTransactions = transactions.transactions.reversed.toList();
          final _quantity = transactions.transactions.length;

          if(_quantity == 0){
            return NoTransactionsCard();
          }

          if(_quantity < 2){
            size = _quantity;
          }

          return ListView.builder(
            padding: const EdgeInsets.all(8),
              itemCount: size,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return TransactionListItem(_latestTransactions[index]);
          });
        }),
        RaisedButton(
          child: Text('Transactions List'),
          color: Colors.green,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return TransactionListScreen();
              }),
            );
          },
        ),
      ],
    );
  }
}
