import 'package:flutter/material.dart';

import 'nav_bar_state.dart';

class NavBarInheritedWidget extends InheritedWidget {
  NavBarStateState data;

  NavBarInheritedWidget({Widget child, this.data}) : super(child: child);

  @override
  //if you get a new value rebuild everything, the app is simple
  bool updateShouldNotify(NavBarInheritedWidget old) => data != old.data;
}
