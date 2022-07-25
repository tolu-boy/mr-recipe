import 'package:flutter/material.dart';
import 'package:mr_receipe/screens/login-screen.dart';
import 'package:mr_receipe/Screens/forgot-password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        'ForgotPassword': (context) => ForgotPassword(),
      },
    );
  }
}
