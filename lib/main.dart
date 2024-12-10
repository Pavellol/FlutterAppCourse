import 'package:desingcode/screens/home_screen.dart';
import 'package:desingcode/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  //MaterialApp.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: /*HomeScreen()*/LoginScreen(),
    );
  }
}


