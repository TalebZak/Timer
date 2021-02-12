import 'package:flutter/material.dart';

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
      bottomNavigationBar: _BottomNavigationBar(
        index: _screenindex,
        callback: setScreenindex,
      ),
    );
  }
}
class _BottomNavigationBar extends StatefulWidget {
  final int index;
  final Function callback;
  const _BottomNavigationBar({Key key, this.index, this.callback}) : super(key: key);

  @override
  __BottomNavigationBarState createState() => __BottomNavigationBarState();
}

class __BottomNavigationBarState extends State<_BottomNavigationBar> {
  @override
  Widget build(BuildContext context) {

    _buildBottomNavBarItem(Icon icon, String label){
      return BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.all(8.0),
            child: icon,
          ),
          label: label
      );
    }
    return BottomNavigationBar(
        backgroundColor: Theme.of(context).backgroundColor,
        currentIndex: widget.index,
        unselectedItemColor: Theme.of(context).accentColor,
        unselectedFontSize: 14,
        selectedFontSize: 14,
        items: [
          _buildBottomNavBarItem(
              Icon(Icons.timer),
              'stopwatch'
          ),
          _buildBottomNavBarItem(
              Icon(Icons.slow_motion_video),
              'Timer',
          ),
          _buildBottomNavBarItem(
              Icon(Icons.settings),
              'Settings',
          ),
        ],
        onTap: (index){
          widget.callback(index);
        },
    );
  }
}