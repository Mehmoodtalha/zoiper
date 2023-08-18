import 'package:flutter/material.dart';

class KeyPadButton extends StatelessWidget {
  final String title;
  final VoidCallback onpress;
  const KeyPadButton({super.key, required this.title, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: 45,
          color: Colors.orange,
          width: MediaQuery.of(context).size.width / 3,
          child: Center(
              child: Text(
            title,
            style: TextStyle(fontSize: 30, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
