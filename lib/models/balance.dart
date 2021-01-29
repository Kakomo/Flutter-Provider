import 'package:flutter/cupertino.dart';

class Balance extends ChangeNotifier{
  double value;
  Balance(this.value);

  void add(double value){
    this.value += value;
    notifyListeners();
  }
  void subtract(double value){
    this.value -=value;
    notifyListeners();
  }

  @override
  String toString(){
    return '\$ $value';
  }
}