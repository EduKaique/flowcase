import 'package:flowcase/domain/models/user.dart';
import 'package:flowcase/utils/result.dart';
import 'package:flutter/foundation.dart';

abstract class AuthRepository extends ChangeNotifier{
  Future<bool> get isAuthenticated;
  Future<User> get loadUser;

  Future<Result<void>> login({required String username, required String password});

  Future<Result<void>> logout();
}