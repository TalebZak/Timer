import 'package:flutter/material.dart';
import 'package:timer/screens/options_screen.dart';
import 'package:timer/screens/stopwatch_screen.dart';
import 'package:timer/screens/timer_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {



  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _screenIndex = 0;
  void _setIndex(index){
    setState(() {
      this._screenIndex = index;
    });
  }
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
      routes: {
        StopWatchScreen.routeName : (context) => StopWatchScreen(
          screenIndex: _screenIndex,
          setIndexCallback: _setIndex,
        ),
        TimerScreen.routeName : (context) => TimerScreen(
          screenIndex: _screenIndex,
          setIndexCallback: _setIndex,
        ),
        OptionsScreen.routeName : (context) => OptionsScreen(
          screenIndex: _screenIndex,
          setIndexCallback: _setIndex,
        ),
      },
      home: StopWatchScreen(
        screenIndex: _screenIndex,
        setIndexCallback: _setIndex,
      ),
    );
  }
}

