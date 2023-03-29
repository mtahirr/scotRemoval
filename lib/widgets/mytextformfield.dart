import 'package:flutter/material.dart';
import 'package:scotremoval/constant/colors.dart';

class Mytextformfield extends StatelessWidget {
  final TextEditingController controller;

  String image;
  String txt;
  String title;
  TextInputType type =
      "type" != null ? TextInputType.name : TextInputType.phone;
  Mytextformfield(
      {this.title, this.type, this.controller, this.image, this.txt});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      decoration: InputDecoration(
        labelText: 'Username or Email',
        labelStyle: TextStyle(
          color: BC.lightGrey,
        ),
        hintStyle: TextStyle(
          color: BC.lightGrey,
        ),
        prefixIcon: Image(image: AssetImage(image)),
        hintText: title,
      ),
    );
  }
}
