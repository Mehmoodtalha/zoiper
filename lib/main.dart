import 'package:flutter/material.dart';
import 'package:zoiper/screens/custom_dialer.dart';
import 'package:zoiper/screens/dialer_screen.dart';
import 'package:zoiper/screens/login_screen.dart';
import 'package:zoiper/screens/privacy_policy_screen.dart';
import 'package:zoiper/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZoiPer',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        // useMaterial3: true,
      ),
      // home: const PrivacPolicyScreen(),
      // home: LoginScreen(),
      home: TabsScreen(),
      // home: DialerScreen(),
      // home: CustomDialer(),
    );
  }
}
