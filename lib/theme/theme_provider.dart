import 'package:flutter/material.dart';
import 'package:moviedb_app/theme/theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;
  bool isSwitch = false;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toogleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
      isSwitch = true;
    } else {
      themeData = lightMode;
      isSwitch = false;
    }
  }
}
