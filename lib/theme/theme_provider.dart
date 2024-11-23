import 'package:flutter/material.dart';
import 'package:notes_app/theme/theme.dart';

class ThemeProvider extends ChangeNotifier {
  // inititally theme is lightmode
  ThemeData _themeData = lightMode;

//getter method to access theme from other parts of the code
  ThemeData get themeData => _themeData;

// getter method to see if we are in dark mode or not
  bool get isDarkMode => _themeData == darkMode;

//setter method to set the new theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

// we will use this toggle in a switch later
  void toggleTheme() {
    _themeData = _themeData == lightMode ? darkMode : lightMode;
    notifyListeners();
  }
}