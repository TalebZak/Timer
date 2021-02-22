import 'package:flutter/material.dart';
import 'package:timer/widgets/bottom_nav_bar.dart';

class OptionsScreen extends StatefulWidget {
  final int screenIndex;
  final Function setIndexCallback;
  static const routeName = '/options-screen';
  const OptionsScreen(
      {Key key, this.screenIndex, this.setIndexCallback}
      ) : super(key: key);
  @override
  _OptionsScreenState createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'options screen',
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