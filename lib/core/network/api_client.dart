import 'dart:convert';
import 'package:http/http.dart' as http;
import '../services/storage_service.dart';

class ApiClient {

  ApiClient({
    required this.baseUrl,
    required this.storageService,
    http.Client? client,
  }) : _client = client ?? http.Client();
  final String baseUrl;
  final StorageService storageService;
  final http.Client _client;

  Future<Map<String, String>> _getHeaders() async {
    final headers = <String, String>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    final token = await storageService.getToken();
    if (token != null && token.isNotEmpty) {
      headers['Authorization'] = 'Bearer $token';
    }

    return headers;
  }

  Future<http.Response> get(String endpoint) async {
    final Uri url = Uri.parse('$baseUrl$endpoint');
    final headers = await _getHeaders();
    return await _client.get(url, headers: headers);
  }

  Future<http.Response> post(String endpoint, {Map<String, dynamic>? body}) async {
    final Uri url = Uri.parse('$baseUrl$endpoint');
    final headers = await _getHeaders();
    return await _client.post(
      url,
      headers: headers,
      body: body != null ? jsonEncode(body) : null,
    );
  }

  Future<http.Response> delete(String endpoint) async {
    final Uri url = Uri.parse('$baseUrl$endpoint');
    final headers = await _getHeaders();
    return await _client.delete(url, headers: headers);
  }
}
