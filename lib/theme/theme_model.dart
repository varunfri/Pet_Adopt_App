import "package:flutter/material.dart";
import "package:petapp/pages/theme/theme_preference.dart";

//this uses privider dependency

class ThemeModel extends ChangeNotifier {
  bool _isDark = false;
  ThemePreferences _preferences = ThemePreferences();
  bool get isDark => _isDark;

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }

  ThemeModel() {
    _isDark = false;
    _preferences = ThemePreferences();
    getPreferences();
  }

  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }
}
