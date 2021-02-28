import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:timer/state/timer_state.dart';
import 'package:timer/widgets/bottom_nav_bar.dart';
import 'package:timer/widgets/start_button.dart';

class TimerScreen extends StatelessWidget {
  static const routeName = '/timer-screen';

  @override
  Widget build(BuildContext context) {
    final TimerState timer = Get.put(TimerState());
    return Scaffold(
      body: Obx(() {
        if (!timer.isRunning.value) {
          return StartButton(onTap: timer.start);
        }
        return Center(
          child: Text(
            timer.timeElapsed,
            style: Theme.of(context).textTheme.headline1,
          ),
        );
      }),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}