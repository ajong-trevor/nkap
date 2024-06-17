import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/user_model.dart';
import '../models/expense_model.dart';

class AuthServices {
  Future<void> getExpenses() async {
    // Change the route to get that of users and not expenses
    final uri = Uri.parse('http://192.168.105.156:8080/expenses/get');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final List<dynamic> json = jsonDecode(response.body);
      // List<ExpenseModel> expenses =
      //     json.map((expense) => ExpenseModel.fromJson(expense)).toList();
      print(json);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  Future<void> registerUser(
      String name, String email, String phone, String password) async {
    Map<String, dynamic> request = {
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
    };

    print(request);
    // provide the post route to register a new user

    try {
      final uri = Uri.parse('http://192.168.105.156:8080/auth/register');
      final response = await http.post(uri, body: request);
      if (response.statusCode == 200) {
        final List<dynamic> json = jsonDecode(response.body);
        print(json);
      } else {
        print(response.statusCode);
      }
    } catch (error) {
      print('error: ${error}');
    }
  }
}
