import 'package:flutter/material.dart';
import 'package:social/ui/page1.dart';
import 'package:social/ui/splash_screen.dart';
import '';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      home: splash(),
    );
  }
}

