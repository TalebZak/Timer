import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final Function onTap;

  const StartButton({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: this.onTap,
        child: Icon(Icons.play_circle_filled_outlined,
            size: 200, color: Theme.of(context).primaryColor),
      ),
    );
  }
}
