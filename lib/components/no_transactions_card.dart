import 'package:flutter/material.dart';

class NoTransactionsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(40),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          'You have no Transactions',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
