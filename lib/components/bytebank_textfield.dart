import 'package:flutter/material.dart';

class ByteBankTextField extends StatefulWidget {
  final TextEditingController _controller;
  final String _label;
  final String _hint;
  final IconData icon;
  final TextInputType keyboardType;

  ByteBankTextField(this._controller, this._label, this._hint, {this.icon, this.keyboardType});

  @override
  State<StatefulWidget> createState() {
    return _ByteBankTextFieldState ();
  }

  Icon _icon() {
    if (icon == null) {
      return null;
    }
    return Icon(icon);
  }

}

class _ByteBankTextFieldState extends State<ByteBankTextField> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: widget._controller,
        keyboardType: widget.keyboardType,
        style: const TextStyle(fontSize: 24),
        decoration: InputDecoration(
          icon: widget._icon(),
          labelText: widget._label,
          hintText: widget._hint,
        ),
      ),
    );
  }

}
