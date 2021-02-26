import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer/state/stopwatch_provider.dart';
import 'package:timer/widgets/bottom_nav_bar.dart';

class StopWatchScreen extends StatelessWidget {
  static const routeName = '/stopwatch-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => StopwatchProvider(),
        child: Consumer<StopwatchProvider>(
          builder: (context, state, _) {
            if (state.isRunning) {
              return Center(
                child: Text(state.timeElapsed,
                    style: Theme.of(context).textTheme.headline1),
              );
            }
            return Center(
              child: GestureDetector(
                onTap: state.start,
                child: Icon(Icons.play_circle_filled_outlined,
                    size: 200, color: Theme.of(context).primaryColor),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
