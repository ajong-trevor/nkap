import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

class AuthServices {
  Future<void> registerUser(
      String name, String email, String phone, String password) async {
    Map<String, dynamic> request = {
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
    };

    try {
      final uri = Uri.parse('http://192.168.100.84:8080/auth/register');
      final response = await http.post(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(request),
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        print(json);
      } else {
        print(response.statusCode);
      }
    } catch (error) {
      print('error: ${error}');
    }
  }

  Future<void> login(String email, String password) async {
    Map<String, dynamic> request = {
      'email': email,
      'password': password,
    };

    try {
      final uri = Uri.parse('http://192.168.100.84:8080/auth/login');
      final response = await http.post(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(request),
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        print(json);
      } else {
        print(response.statusCode);
      }
    } catch (error) {
      print("error: ${error}");
    }
  }
}
