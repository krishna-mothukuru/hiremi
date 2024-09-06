import 'dart:async';
import 'dart:convert';

import 'package:hiremi_api/hiremi_api.dart';
import 'package:http/http.dart' as http;

class HiremiRequestFailure implements Exception {}

class HiremiNotFoundFailure implements Exception {}

class HiremiApiClient {
  HiremiApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrlHiremi = '13.127.246.196:8000';

  final http.Client _httpClient;

  Future<User> hiremiUsers() async {
    final usersRequest = Uri.https(
      _baseUrlHiremi,
      '/api/registers/',
    );

    final usersResponse = await _httpClient.get(usersRequest);

    if (usersResponse.statusCode != 200) {
      throw HiremiRequestFailure();
    }

    final usersJson = jsonDecode(usersResponse.body) as List;

    if (usersJson.isEmpty) {
      throw HiremiNotFoundFailure();
    }

    final results = usersJson as List;

    if (results.isEmpty) throw HiremiNotFoundFailure();

    return User.fromJson(results.first as Map<String, dynamic>);
  }
}
