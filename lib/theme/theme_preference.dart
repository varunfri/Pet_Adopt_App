//File uses Shared Preference Model
// ignore_for_file: constant_identifier_names

import "package:shared_preferences/shared_preferences.dart";

//Creating the class to save the
// theme preference across app launches

class ThemePreferences {
  static const PREF_KEY = 'pref_key';

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    //setBool(key, value);
    sharedPreferences.setBool(PREF_KEY, value);
  }

  //Method to get theme saved use

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(PREF_KEY);
  }
}
