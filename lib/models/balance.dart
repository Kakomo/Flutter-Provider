class Balance{
  final double value;
  Balance(this.value);

  @override
  String toString(){
    return '\$ $value';
  }
}