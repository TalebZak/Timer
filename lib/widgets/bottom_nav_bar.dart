import 'package:flutter/material.dart';
import 'package:timer/screens/options_screen.dart';
import 'package:timer/screens/stopwatch_screen.dart';
import 'package:timer/screens/timer_screen.dart';

class BottomNavBar extends StatefulWidget {
  final int index;
  final Function callback;
  const BottomNavBar({Key key, this.index, this.callback}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
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
        switch(index){
          case 0:
            Navigator.of(context).pushNamed(StopWatchScreen.routeName);
            break;
          case 1:
            Navigator.of(context).pushNamed(TimerScreen.routeName);
            break;
          case 2:
            Navigator.of(context).pushNamed(OptionsScreen.routeName);
            break;
          default:
            Navigator.of(context).pushNamed(StopWatchScreen.routeName);
            break;
        }

      },
    );
  }
}