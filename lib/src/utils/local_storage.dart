/// @author think
/// @email TODO
/// @date 2023.09.13
/// @description TODO
/// @license The MIT License
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static save(String key, value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static get(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }

  static remove(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}
