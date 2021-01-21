import 'package:flutter/material.dart';

import '../../models/transaction.dart';
import '../../components/bytebank_textfield.dart';
import 'components/transaction_form.dart';

class TransactionFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New transaction"),
      ),
      body: TransactionForm(),
    );
  }
}
