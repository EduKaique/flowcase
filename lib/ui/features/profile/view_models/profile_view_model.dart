import 'package:flowcase/data/repository/auth/auth_repository_remote.dart';
import 'package:flowcase/domain/models/user.dart';
import 'package:flowcase/utils/result.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer';

class ProfileViewModel extends ChangeNotifier {
  final AuthRepositoryRemote _authRepository;

  ProfileViewModel({required AuthRepositoryRemote authRepository})
    : _authRepository = authRepository;

  // Exemplo caso fosse com lista
  // List<User> _users = [];
  // List<User> get users => _users;

  User? _user;
  User? get user => _user;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  Future<void> loadUser() async {
    _user = _authRepository.currentUser;
    notifyListeners();
  }

  Future<void> logout() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _authRepository.logout();

      switch (result) {
        case Ok<void>():
          log('Logout realizado com sucesso');
        case Error<void>():
          _error = result.error.toString();
        //log aqui
      }
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
