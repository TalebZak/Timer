import 'package:flutter/material.dart';
import 'package:timer/widgets/bottom_nav_bar.dart';

class StopWatchScreen extends StatefulWidget {
  final int screenIndex;
  final Function setIndexCallback;
  static const routeName = '/stopwatch-screen';
  const StopWatchScreen(
      {Key key, this.screenIndex, this.setIndexCallback}
      ) : super(key: key);
  @override
  _StopWatchScreenState createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'stopwatch screen',
          style: Theme
              .of(context)
              .textTheme
              .headline1,
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        index: widget.screenIndex,
        callback: widget.setIndexCallback,
      ),
    );
  }
}
