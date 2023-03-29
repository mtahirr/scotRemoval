import 'package:flutter/material.dart';
import 'package:scotremoval/constant/colors.dart';

class MyPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String title;
  final String txt;
  String image;
  MyPasswordField({this.controller, this.title, this.txt, this.image});

  @override
  _MyPasswordFieldState createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: 'password',
        hintStyle: TextStyle(
          color: BC.lightGrey,
        ),
        prefixIcon: Image(image: AssetImage('assets/lock.png')),
        suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            child: Icon(
                obscureText == true ? Icons.visibility : Icons.visibility_off)),
        hintText: widget.title,
      ),
    );
  }
}
