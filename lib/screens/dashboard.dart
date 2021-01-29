import 'package:bytebank/components/BalanceCard.dart';
import 'package:bytebank/models/balance.dart';
import 'package:bytebank/screens/deposit_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bytebank'),
        ),
        body: ListView(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: BalanceCard(),
            ),
            RaisedButton(
              child: Text('Deposit'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DepositForm();
                  }),
                );
              },
            ),
          ],
        ));
  }
}
