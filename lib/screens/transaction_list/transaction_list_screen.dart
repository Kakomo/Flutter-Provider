import 'dart:async';

import 'package:bytebank/screens/transaction_form/transaction_form_screen.dart';
import 'package:flutter/material.dart';

import '../../models/transaction.dart';
import 'components/transaction_list.dart';

class TransactionListScreen extends StatelessWidget{

  final transactions = List<Transaction>();

  @override
  Widget build(BuildContext context) {
    debugPrint("building the state");
    return Scaffold(
      appBar: AppBar(
        title: Text("Transactions"),
      ),
      body: TransactionList(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _pushListScreen(context),
      ),
    );
  }

  void _pushListScreen(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return TransactionFormScreen();
    }));
  }



}
