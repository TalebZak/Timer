import 'package:flutter/material.dart';
import 'package:timer/widgets/bottom_nav_bar.dart';

class StopWatchScreen extends StatelessWidget {
  static const routeName = '/stopwatch-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'stopwatch screen',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
