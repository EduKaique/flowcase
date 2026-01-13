import 'package:flowcase/domain/models/user.dart';
import 'package:flowcase/utils/result.dart';

abstract class UserRepository {
  Future<Result<List<User>>> getUsers();
  Future<Result<User>> getUser(int id);
}
