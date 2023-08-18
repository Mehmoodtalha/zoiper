import 'package:flutter/material.dart';
import 'package:zoiper/widgets/keypad_button.dart';

class CustomDialer extends StatefulWidget {
  const CustomDialer({super.key});

  @override
  State<CustomDialer> createState() => _CustomDialerState();
}

class _CustomDialerState extends State<CustomDialer> {
  var userinput = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.orange,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 45,
                      alignment: Alignment.center,
                      child: Text(
                        userinput,
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              if (userinput != null && userinput.length > 0) {
                                userinput = userinput.substring(
                                    0, userinput.length - 1);
                              }
                              setState(() {});
                            },
                            child: Icon(
                              Icons.backspace,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: 1,
              width: MediaQuery.of(context).size.width,
            ),
            // TextFormField(
            //   keyboardType: TextInputType.none,
            //   decoration: const InputDecoration(
            //       fillColor: Colors.orange,
            //       filled: true,
            //       suffixIcon: Icon(
            //         Icons.backspace,
            //         color: Colors.white,
            //       )),
            //   textAlign: TextAlign.center,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KeyPadButton(
                    title: "1",
                    onpress: () {
                      userinput += 1.toString();
                      print("1");
                      setState(() {});
                    }),
                KeyPadButton(
                    title: "2",
                    onpress: () {
                      userinput += 2.toString();
                      print("2");
                      setState(() {});
                    }),
                KeyPadButton(
                    title: "3",
                    onpress: () {
                      userinput += 3.toString();
                      print("3");
                      setState(() {});
                    })
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KeyPadButton(
                    title: "4",
                    onpress: () {
                      userinput += 4.toString();
                      print("4");
                      setState(() {});
                    }),
                KeyPadButton(
                    title: "5",
                    onpress: () {
                      userinput += 5.toString();
                      print("5");
                      setState(() {});
                    }),
                KeyPadButton(
                    title: "6",
                    onpress: () {
                      userinput += 6.toString();
                      print("6");
                      setState(() {});
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KeyPadButton(
                    title: "7",
                    onpress: () {
                      userinput += 7.toString();
                      print("7");
                      setState(() {});
                    }),
                KeyPadButton(
                    title: "8",
                    onpress: () {
                      userinput += 8.toString();
                      print("8");
                      setState(() {});
                    }),
                KeyPadButton(
                    title: "9",
                    onpress: () {
                      userinput += 9.toString();
                      print("9");
                      setState(() {});
                    })
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KeyPadButton(
                    title: "*",
                    onpress: () {
                      userinput += 1.toString();
                      print("1");
                      setState(() {});
                    }),
                KeyPadButton(
                    title: "0",
                    onpress: () {
                      userinput += 0.toString();
                      print("0");
                      setState(() {});
                    }),
                KeyPadButton(
                    title: "#",
                    onpress: () {
                      userinput += 1.toString();
                      print("1");
                      setState(() {});
                    })
              ],
            ),
            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     KeyPadButton(title: "4"),
            //     KeyPadButton(title: "5"),
            //     KeyPadButton(title: "6"),
            //   ],
            // ),
            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     KeyPadButton(title: "7"),
            //     KeyPadButton(title: "8"),
            //     KeyPadButton(title: "9"),
            //   ],
            // ),
            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     KeyPadButton(title: "*"),
            //     KeyPadButton(title: "0"),
            //     KeyPadButton(title: "#"),
            //   ],
            // ),
            Container(
              color: Colors.orange,
              width: MediaQuery.of(context).size.width,
              height: 45,
              child: Center(
                  child: InkWell(
                onTap: () {
                  print(userinput);
                },
                child: Icon(
                  Icons.call,
                  color: Colors.white,
                  size: 35,
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
