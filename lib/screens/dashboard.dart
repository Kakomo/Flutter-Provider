import 'package:bytebank/components/BalanceCard.dart';
import 'package:bytebank/models/balance.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bytebank'),
      ),
      body: Align(
        alignment: Alignment.topCenter,
          child: BalanceCard(Balance(110.0))),
    );
  }
}
