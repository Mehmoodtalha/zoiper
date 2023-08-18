import 'package:flutter/material.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';

class DialerScreen extends StatefulWidget {
  const DialerScreen({super.key});

  @override
  State<DialerScreen> createState() => _DialerScreenState();
}

class _DialerScreenState extends State<DialerScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  ),
                  DialPad(
                      enableDtmf: false,
                    
                      outputMask: "00000000000000",
                      
                      dialOutputTextColor: Colors.white,
                      backspaceButtonIconColor: Colors.white,
                      buttonTextColor: Colors.white,
                      keyPressed: (value) {
                  print('$value was pressed');
                      },
                      makeCall: (number) {
                  print(number);
                      },
                    ),
                ],
              ),
            )),
      ),
    );
  }
}
