import 'package:flutter/material.dart';
import 'package:timer/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white54,
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 40,
            color: Colors.white
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}

