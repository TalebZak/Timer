import 'package:flutter/material.dart';
import 'package:timer/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _screenindex = 0;

  void setScreenindex(int index){
    setState(() {
      this._screenindex = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    final List <Widget> Screens = [
      Center(
        child: Text(
          'first Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      Center(
        child: Text(
          'second Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      Center(
        child: Text(
          'third Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    ];
    return Scaffold(
      body: Screens[_screenindex],
      bottomNavigationBar: BottomNavBar(
        index: _screenindex,
        callback: setScreenindex,
      ),
    );
  }
}
