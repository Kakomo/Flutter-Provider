import 'package:bytebank/components/bytebank_textfield.dart';
import 'package:bytebank/models/balance.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DepositForm extends StatelessWidget {
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receive Deposit'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          ByteBankTextField(
            _amountController,
            "Amount",
            "0.00",
            icon: Icons.monetization_on,
            keyboardType: TextInputType.number,
          ),
          RaisedButton(
            child: const Text("Add"),
            onPressed: () => _createDeposit(context),
          )
        ]),
      ),
    );
  }
  _createDeposit(context){
    final double value = double.tryParse(_amountController.text);
    final validDeposit = _validateDeposit(value);
    if(validDeposit){
      _updateState(context, value);
      Navigator.pop(context);
    }

  }
  _validateDeposit(value){
    final _information = value != null;
    return _information;
  }
  _updateState(context,value){
    Provider.of<Balance>(context,listen: false).add(value);
  }
}
