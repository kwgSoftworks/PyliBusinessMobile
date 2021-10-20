import 'dart:convert';
import 'package:pyli_business_mobile/data/services/local/__local.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalCacheImpl implements LocalCache {
  static const TOKEN = 'userTokenId';
  static const USER = "currentUser";

  late SecureStorage storage;
  late SharedPreferences sharedPreferences;

  LocalCacheImpl({
    required this.storage,
    required this.sharedPreferences,
  });

  @override
  Future<void> deleteToken() async {
    try {
      await storage.delete(TOKEN);
    } catch (e) {
      AppLogger.log(e);
    }
  }

  @override
  Object? getFromLocalCache(String key) {
    try {
      return sharedPreferences.get(key);
    } catch (e) {
      AppLogger.log(e);
    }
  }

  @override
  Future<String> getToken() async {
    try {
      return (await storage.read(TOKEN))!;
    } catch (e) {
      AppLogger.log(e);
      return "";
    }
  }

  @override
  Future<void> removeFromLocalCache(String key) async {
    await sharedPreferences.remove(key);
  }

  @override
  Future<void> saveToken(String token) async {
    try {
      await storage.write(key: TOKEN, value: token);
    } catch (e) {
      AppLogger.log(e);
    }
  }

  @override
  Future<void> saveToLocalCache({required String key, required value}) async {
    AppLogger.log('Data being saved: key: $key, value: $value');

    if (value is String) {
      await sharedPreferences.setString(key, value);
    }
    if (value is bool) {
      await sharedPreferences.setBool(key, value);
    }
    if (value is int) {
      await sharedPreferences.setInt(key, value);
    }
    if (value is double) {
      await sharedPreferences.setDouble(key, value);
    }
    if (value is List<String>) {
      await sharedPreferences.setStringList(key, value);
    }
    if (value is Map) {
      await sharedPreferences.setString(key, json.encode(value));
    }
  }

  @override
  Future<void> cacheUserData({required String value}) async {
    await saveToLocalCache(key: USER, value: value);
  }

  @override
  Future<void> deleteUserData() async {
    await removeFromLocalCache(USER);
  }
}
