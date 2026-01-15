import 'package:flowcase/domain/models/user.dart';
import 'package:flowcase/utils/result.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final _secureStorage = const FlutterSecureStorage(
    aOptions: AndroidOptions(resetOnError: true),
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
  );

  static const _tokenKey = 'auth_token';
  static const _userKey = 'auth_user_data';

  Future<void> saveToken(String value) async {
    await _secureStorage.write(key: _tokenKey, value: value);
  }

  Future<Result<String?>> getToken() async {
    try {
      final token = await _secureStorage.read(key: _tokenKey);
      return Result.ok(token);
    } catch (e) {
      return Result.error(e);
    }
  }

  Future<void> deleteToken() async {
    await _secureStorage.delete(key: _tokenKey);
  }

  Future<void> clearAll() async {
    await _secureStorage.deleteAll();
  }

  Future<void> saveUser(User user) async {
    await _secureStorage.write(key: _userKey, value: user.toJson());
  }

  Future<Result<User?>> getUser() async {
    try {
      final jsonString = await _secureStorage.read(key: _userKey);
      if (jsonString != null) {
        return Result.ok(User.fromJson(jsonString));
      }
      return Result.ok(null);
    } catch (e) {
      return Result.error(e);
    }
  }

  Future<void> removeUser() async {
    await _secureStorage.delete(key: _userKey);
  }
}
