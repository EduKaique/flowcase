import 'package:flowcase/data/repository/user_repository.dart';
import 'package:flowcase/domain/models/user.dart';
import 'package:flowcase/utils/result.dart';
import 'package:flutter/foundation.dart';

class ProfileViewModel extends ChangeNotifier {
  final UserRepository _userRepository;

  ProfileViewModel({required UserRepository userRepository})
    : _userRepository = userRepository;

  // Exemplo caso fosse com lista
  // List<User> _users = [];
  // List<User> get users => _users;

  User? _user;
  User? get user => _user;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  Future<void> loadUser(int id) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _userRepository.getUser(id);

      switch (result) {
        case Ok<User>():
          _user = result.value;

        case Error():
          _error = result.error.toString();
      } 
    } finally {
        _isLoading = false;
        notifyListeners();
    }
  }

}
