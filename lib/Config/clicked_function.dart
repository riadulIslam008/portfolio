import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/MainView/main_view.dart';

class ClickedFunction{

  //NAVIGATION BUTTON WORKING FUNCTION
    void scrollSection(int scrollIndex) {
    final GlobalKey key = MainView.globalKey[scrollIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(milliseconds: 500),
      curve: Curves.bounceIn,
    );
  }

  //
}