import 'package:flowcase/models/user.dart';
import 'package:flowcase/models/user_api_model.dart';
import 'package:flowcase/repository/user_repository.dart';
import 'package:flowcase/services/api_dummyjson.dart';
import 'package:flowcase/utils/result.dart';

class UserRepositoryRemote implements UserRepository {
  final ApiDummyjson _api;

  UserRepositoryRemote({required ApiDummyjson api}) : _api = api;

  @override
  Future<Result<List<User>>> getUsers() async {
    final result = await _api.getUsers();

    switch (result) {
      case Ok<List<UserApiModel>>():
        final domainUsers = result.value.map((apiModel) {
          return User(
            id: apiModel.id,
            fullName: '${apiModel.firstName} ${apiModel.lastName}',
            email: apiModel.email,
            imageUrl: apiModel.image,
          );
        }).toList();

        return Result.ok(domainUsers);

      case Error():
        return Result.error(result.error);
    }
  }

  @override
  Future<Result<User>> getUser(int id) async {
    final result = await _api.getUserById(id);

    switch (result) {
      case Ok<UserApiModel>():
        final apiModel = result.value;
        return Result.ok(
          User(
            id: apiModel.id,
            fullName: '${apiModel.firstName} ${apiModel.lastName}',
            email: apiModel.email,
            imageUrl: apiModel.image,
          ),
        );
      case Error():
        return Result.error(result.error);
    }
  }
}
