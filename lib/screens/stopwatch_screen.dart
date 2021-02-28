import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer/state/stopwatch_provider.dart';
import 'package:timer/widgets/bottom_nav_bar.dart';
import 'package:timer/widgets/start_button.dart';

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
            return StartButton(onTap: state.start);
          },
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
