import 'package:shared_preferences/shared_preferences.dart';

class SharedpreferenceHelper {
  static String userIdKey = "USERKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";
  static String userImageKey = "USERIMAGEKEY";

  Future<bool> saveUserId(String getuserId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userIdKey, getuserId);
  }

  Future<bool> saveUserName(String getuserName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userNameKey, getuserName);
  }

Future<bool> saveUserEmail(String getUserEmail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userEmailKey, getUserEmail);
  }

Future<bool> saveUserImage(String getUserImage) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userImageKey, getUserImage);
  }

  Future<String?> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userIdKey);
  }

  Future<String?> getUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userNameKey);
  }

  Future<String?> getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userEmailKey);
  }

  Future<String?> getUserImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userImageKey);
  }
}