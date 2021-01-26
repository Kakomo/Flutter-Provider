import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Balance extends ChangeNotifier{
  final double value;
  Balance(this.value);

  @override
  String toString(){
    return '\$ $value';
  }
}