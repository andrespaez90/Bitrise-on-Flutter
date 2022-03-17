import 'package:flutter/foundation.dart';

import '../../../../integrations/storage/local_storage_manager.dart';

abstract class AuthStorageManager {
  Future<void> deleteToken();

  Future<void> setToken(String newToken);

  Future<String?> getToken();
}

class AuthStorageManagerImpl extends AuthStorageManager {
  AuthStorageManagerImpl(this._storageManager);

  final String _KEY_USER_TOKEN = 'auth_storage_user_token';

  final LocalStorageManager _storageManager;

  @nonVirtual
  @override
  Future<void> deleteToken() {
    return _storageManager.delete(_KEY_USER_TOKEN);
  }

  @nonVirtual
  @override
  Future<void> setToken(String newToken) {
    return _storageManager.set(_KEY_USER_TOKEN, newToken);
  }

  @nonVirtual
  @override
  Future<String?> getToken() {
    return _storageManager.get(_KEY_USER_TOKEN);
  }
}
