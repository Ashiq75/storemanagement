import 'package:flutter/material.dart';
import 'package:untitled12/lab/lab.dart';
import 'package:untitled12/loginpage/login.dart';
import 'package:untitled12/signuppage/signup.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store Management',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/lab': (context) => lab()
      },
    );
  }
}