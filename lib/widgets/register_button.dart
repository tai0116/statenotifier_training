import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton(this.registerOnTap);

  final registerOnTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          '登録',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
      onTap: () {
        registerOnTap();
      },
    );
  }
}
