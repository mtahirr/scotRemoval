import 'package:flutter/material.dart';
import 'package:scotremoval/constant/colors.dart';

class MyAppbar extends StatelessWidget {
  String title;
  IconData leading;
  IconData action;
  Function onpress;
  Function actionPress;
  MyAppbar(
      {this.action, this.actionPress, this.leading, this.onpress, this.title});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: Icon(leading)),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: BC.white),
      ),
      actions: [
        Icon(
          action,
          color: BC.white,
        ),
      ],
    );
  }
}
