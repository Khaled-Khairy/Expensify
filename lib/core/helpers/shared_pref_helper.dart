import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  // private constructor
  SharedPrefHelper._();

  static SharedPreferences? _sharedPreferences;

  // Initialize the SharedPreferences instance once
  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  /// Removes a value from SharedPreferences with given [key].
  static Future<void> removeData({required String key}) async {
    debugPrint('SharedPrefHelper : data with key : $key has been removed');
    await _sharedPreferences?.remove(key);
  }

  /// Removes all keys and values in the SharedPreferences
  static Future<void> clearAllData() async {
    debugPrint('SharedPrefHelper : all data has been cleared');
    await _sharedPreferences?.clear();
  }

  /// Saves a [value] with a [key] in the SharedPreferences.
  static Future<void> setData({required String key, required dynamic value}) async {
    debugPrint("SharedPrefHelper : setData with key : $key and value : $value");
    if (value is String) {
      await _sharedPreferences?.setString(key, value);
    } else if (value is int) {
      await _sharedPreferences?.setInt(key, value);
    } else if (value is bool) {
      await _sharedPreferences?.setBool(key, value);
    } else if (value is double) {
      await _sharedPreferences?.setDouble(key, value);
    }
  }

  /// Gets a bool value from SharedPreferences with given [key].
  static Future<bool> getBool({required String key}) async {
    debugPrint('SharedPrefHelper : getBool with key : $key');
    return _sharedPreferences?.getBool(key) ?? false;
  }

  /// Gets a double value from SharedPreferences with given [key].
  static Future<double> getDouble({required String key}) async {
    debugPrint('SharedPrefHelper : getDouble with key : $key');
    return _sharedPreferences?.getDouble(key) ?? 0.0;
  }

  /// Gets an int value from SharedPreferences with given [key].
  static Future<int> getInt({required String key}) async {
    debugPrint('SharedPrefHelper : getInt with key : $key');
    return _sharedPreferences?.getInt(key) ?? 0;
  }

  /// Gets a String value from SharedPreferences with given [key].
  static Future<String> getString({required String key}) async {
    debugPrint('SharedPrefHelper : getString with key : $key');
    return _sharedPreferences?.getString(key) ?? '';
  }
}
