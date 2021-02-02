import 'package:bytebank/components/bytebank_textfield.dart';
import 'package:bytebank/models/balance.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:bytebank/models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TransactionForm extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        ByteBankTextField(
          _nameController,
          "Name",
          "John Doe",
          keyboardType: TextInputType.name,
        ),
        ByteBankTextField(
          _amountController,
          "Amount",
          "0.00",
          icon: Icons.monetization_on,
          keyboardType: TextInputType.number,
        ),
        RaisedButton(
          child: const Text("Add"),
          onPressed: () => _popTransaction(context),
        )
      ]),
    );
  }

  _popTransaction(BuildContext context) {
    final name = _nameController.text;
    final amount = double.tryParse(_amountController.text);
    if (name == null || amount == null) {
      return;
    }

    final transaction = Transaction(name, amount);
//          debugPrint("$transaction");
    _updateState(context, transaction, amount);
    Navigator.pop(context);
  }

  _updateState(context, transaction,amount) {
    Provider.of<Transactions>(context, listen: false).put(transaction);
    Provider.of<Balance>(context, listen: false).subtract(amount);
  }
}
