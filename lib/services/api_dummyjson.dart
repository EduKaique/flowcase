import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flowcase/utils/result.dart';
import 'package:flowcase/models/user_api_model.dart';

class ApiDummyjson {
  final String _baseUrl = 'https://dummyjson.com';

  Future<Result<List<UserApiModel>>> getUsers() async {
    try {
      final response = await http.get(Uri.parse('$_baseUrl/users'));

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body) as Map<String, dynamic>;
        final list = decoded['users'] as List;

        final users = list
            .map((json) => UserApiModel.fromJson(json as Map<String, dynamic>))
            .toList();

        return Result.ok(users);
      } else {
        return Result.error(
          Exception('Falha ao carregar usuários: ${response.statusCode}'),
        );
      }
    } catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<UserApiModel>> getUserById(int id) async {
    try {
      final response = await http.get(Uri.parse('$_baseUrl/users/$id'));

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body) as Map<String, dynamic>;
        return Result.ok(UserApiModel.fromJson(decoded));
      } else {
        return Result.error(
          Exception('Falha ao buscar usuário $id: ${response.statusCode}'),
        );
      }
    } catch (e) {
      return Result.error(e);
    }
  }
}
