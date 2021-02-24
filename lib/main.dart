import 'package:flutter/material.dart';
import 'package:timer/screens/options_screen.dart';
import 'package:timer/screens/stopwatch_screen.dart';
import 'package:timer/screens/timer_screen.dart';
import 'package:timer/state/nav_bar_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavBarState(
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.white,
            accentColor: Colors.white54,
            backgroundColor: Colors.black,
            scaffoldBackgroundColor: Colors.black,
            textTheme: TextTheme(
                headline1: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 40,
                    color: Colors.white))),
        debugShowCheckedModeBanner: false,
        routes: {
          StopWatchScreen.routeName: (context) => StopWatchScreen(),
          TimerScreen.routeName: (context) => TimerScreen(),
          OptionsScreen.routeName: (context) => OptionsScreen(),
        },
        home: StopWatchScreen(),
      ),
    );
  }
}

