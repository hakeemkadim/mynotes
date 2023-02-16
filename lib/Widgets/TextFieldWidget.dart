
import 'package:flutter/material.dart';

class TextFieldContainer extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final bool obscureText;

  TextFieldContainer({
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.obscureText,
  });

  @override
  _TextFieldContainerState createState() => _TextFieldContainerState();
}

class _TextFieldContainerState extends State<TextFieldContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
          suffixIcon: Icon(widget.icon),
          contentPadding: EdgeInsets.only(left: 22, top: 22, bottom: 18),
        ),
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}