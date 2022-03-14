import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorageManager {
  final FlutterSecureStorage _storage = const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true));

  @nonVirtual
  Future<void> deleteAll() {
    return _storage.deleteAll();
  }

  @nonVirtual
  Future<String?> get(String key) {
    return _storage.read(key: key);
  }

  @nonVirtual
  Future<void> set(String key, String value) {
    return _storage.write(key: key, value: value);
  }

  @nonVirtual
  Future<void> delete(String key) {
    return _storage.delete(key: key);
  }
}
