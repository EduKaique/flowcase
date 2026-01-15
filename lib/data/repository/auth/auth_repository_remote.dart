import 'package:flowcase/data/models/login_request.dart';
import 'package:flowcase/data/models/login_response.dart';
import 'package:flowcase/data/repository/auth/auth_repository.dart';
import 'package:flowcase/data/services/api_dummyjson.dart';
import 'package:flowcase/data/services/secure_storage_service.dart';
import 'package:flowcase/domain/models/user.dart';
import 'package:flowcase/utils/result.dart';

class AuthRepositoryRemote extends AuthRepository {
  final ApiDummyjson _api;
  final SecureStorageService _storage;

  AuthRepositoryRemote({
    required ApiDummyjson api,
    required SecureStorageService storage,
  }) : _api = api,
       _storage = storage;

  bool? _isAuthenticated;
  String? _authToken;
  User? _currentUser;

  String? get token => _authToken;
  User? get currentUser => _currentUser;

  Future<void> _fetch() async {
    try {
      final tokenResult = await _storage.getToken();
      if (tokenResult is Ok<String?> && tokenResult.value != null) {
        _authToken = tokenResult.value;
        _isAuthenticated = true;

        final userResult = await _storage.getUser();
        if (userResult is Ok<User?>) {
          _currentUser = userResult.value;
        }
      } else {
        _isAuthenticated = false;
      }
    } catch (e) {
      _isAuthenticated = false;
      _authToken = null;
      _currentUser = null;
    }
  }

  @override
  Future<bool> get isAuthenticated async {
    if (_isAuthenticated != null) {
      return _isAuthenticated!;
    }

    await _fetch();
    return _isAuthenticated ?? false;
  }

  @override
  Future<User> get loadUser async {
    if (_currentUser != null) {
      return _currentUser!;
    }

    await _fetch();
    return _currentUser!;
  }

  @override
  Future<Result<void>> login({
    required String username,
    required String password,
  }) async {
    try {
      final result = await _api.login(
        LoginRequest(username: username, password: password),
      );

      switch (result) {
        case Ok<LoginResponse>():
          final response = result.value;

          final user = User(
            id: response.id,
            fullName: '${response.firstName} ${response.lastName}',
            email: response.email,
            imageUrl: response.image,
          );

          _isAuthenticated = true;
          _authToken = response.accessToken;
          _currentUser = user;

          await Future.wait([
            _storage.saveToken(response.accessToken),
            _storage.saveUser(user),
          ]);

          return Result.ok(null);

        case Error<LoginResponse>():
          return Result.error(result.error);
      }
    } finally {
      notifyListeners();
    }
  }

  @override
  Future<Result<void>> logout() async {
    try {
      await Future.wait([_storage.deleteToken(), _storage.removeUser()]);

      _authToken = null;
      _currentUser = null;
      _isAuthenticated = false;

      return Result.ok(null);
    } catch (e) {
      return Result.error(e);
    } finally {
      notifyListeners();
    }
  }
}
