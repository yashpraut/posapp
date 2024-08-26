import 'package:shared_preferences/shared_preferences.dart';

import 'cache_keys.dart';

class CustomerCache {
  final SharedPreferences sharedPreferences;

  CustomerCache({required this.sharedPreferences});


  void setUserId(String key, String string) async {
    await sharedPreferences.setString(CacheKeys.userId, string);
  }


  Future<String?> getUserId(String key) async {
    return sharedPreferences.getString(CacheKeys.userId);
  }


  Future<bool> clearAll() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    return true;
  }
}
