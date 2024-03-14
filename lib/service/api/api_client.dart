import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client.g.dart';

@riverpod
ApiClient pokemonApiClient(PokemonApiClientRef ref) {
  return ApiClient();
}

class ApiClient {
  ApiClient();
  static const _host = 'pokeapi.co';
  static const _headers = {
    'Accept': 'application/json',
  };
  static const _timeout = Duration(seconds: 10);

  Future<T> get<T>({
    required String path,
    required T Function(Map<String, dynamic> json) decoder,
  }) async {
    final res = await http
        .get(
          Uri.https(
            _host,
            'api/v2/$path',
          ),
          headers: _headers,
        )
        .timeout(_timeout);

    final json = jsonDecode(res.body) as Map<String, dynamic>;

    if (res.statusCode == 200) {
      return decoder(json);
    }
    throw UnimplementedError();
  }
}
