import 'package:flutter/material.dart';
import 'package:zoiper/widgets/text_button.dart';

class PrivacPolicyScreen extends StatelessWidget {
  const PrivacPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 65),
                child: Image(image: AssetImage("assets/images/logo3.jpg")),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Terms & Data Disclosure",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "The app collects and sends data for you:",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Text(
                        "email, app version, device ID, storage ID,",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                "This data is used for:",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "-Troubleshooting problems,",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "-Syncing of old purchase,",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "-Crash reports;",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Tap to agree",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                              width: 110,
                              child: Image(
                                  image:
                                      AssetImage("assets/images/smilie.jpg")))
                        ],
                      )
                    ],
                  )),
              CustomTextButton(
                  buttonColor: Colors.orange, text: "Agree & Continue"),
              SizedBox(
                height: 10,
              ),
              Text(
                                "Tap 'Agree & Continue' to accept the",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                "Zoiper ",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              Text(
                                "General terms",
                                style:
                                    TextStyle(color: Colors.lightGreen, fontSize: 15),
                              ),
                              Text(
                                " and ",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              Text(
                                "Privacy Policy",
                                style:
                                    TextStyle(color: Colors.lightGreen, fontSize: 15),
                              ),
                                ],
                              )
            ],
          ),
        ),
      ),
    );
  }
}
