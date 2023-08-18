import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextButton extends StatelessWidget {
  String? text;
  Color? buttonColor= Colors.lightGreen;
   CustomTextButton({required this.buttonColor, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
        child: Text(text??"", 
        style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),)
          
        ),
      );
  }
}
