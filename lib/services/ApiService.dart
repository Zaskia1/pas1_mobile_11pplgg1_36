// services/api_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:pas1_mobile_11pplgg1_36/models/PostModel.dart';

class ApiService {
  final String baseUrl = 'https://www.thesportsdb.com/api/v1/json/3/';

  Future<List<PostModel>> fetchPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/search_all_teams.php?l=English%20Premier%20League'));

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((json) => PostModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}