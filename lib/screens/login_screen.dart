import 'package:flutter/material.dart';
import 'package:zoiper/widgets/text_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Account Setup",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.orange,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 95),
                  child: Image(image: AssetImage("assets/images/logo.jpg")),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Username @ PBX/VoiP provider",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon:
                          Icon(Icons.visibility_off, color: Colors.blueGrey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                CustomTextButton(buttonColor: Colors.lightGreen, text: "Creat an account"),
                SizedBox(
                  height: 20,
                ),
                CustomTextButton(buttonColor: Colors.orange, text: "Providers list"),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 70,
                        child: Image(image: AssetImage("assets/images/QR.jpg"))),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login with a",
                          style: TextStyle(color: Colors.orange),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "QR code",
                          style: TextStyle(color: Colors.orange),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
