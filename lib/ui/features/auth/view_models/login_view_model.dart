import 'package:flowcase/data/repository/auth/auth_repository.dart';
import 'package:flowcase/utils/result.dart';
import 'package:flutter/foundation.dart';


class LoginViewModel extends ChangeNotifier {
  final AuthRepository _authRepository;

  LoginViewModel({required AuthRepository authRepository}) : _authRepository = authRepository;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  Future<void> login(String username, String password) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _authRepository.login(username: username, password: password);

      switch (result) {
        case Ok<void>():
          break;
        case Error<void>():
          _error = result.error.toString();

          if (_error!.contains('401')) {
            _error = "Usuário ou senha inválidos";
          }
      }
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

}