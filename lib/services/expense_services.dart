import 'package:http/http.dart' as http;
import 'package:nkap/models/expense_model.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

import '../models/expense_list_model.dart';

class ExpenseServices {
  final List<ExpenseListModel> expenses = [
    ExpenseListModel(
      date: DateFormat.yMd().format(DateTime.now()),
      expense: [
        ExpenseModel(
          category: 'Transportation',
          amount: '250',
          item: 'Transport',
          spendingType: 'Variable',
          userId: '001',
          wantNeed: 'Need',
        ),
        ExpenseModel(
          category: 'Feeding',
          amount: '2500',
          item: 'Food',
          spendingType: 'Variable',
          userId: '001',
          wantNeed: 'Need',
        ),
        ExpenseModel(
          category: 'Subscription',
          amount: '1000',
          item: 'Internet',
          spendingType: 'Fixed',
          userId: '001',
          wantNeed: 'Want',
        ),
      ],
    ),
    ExpenseListModel(
      date: DateFormat.yMd().format(DateTime(2024, 6, 17)),
      expense: [
        ExpenseModel(
          category: 'Transportation',
          amount: '250',
          item: 'Transport',
          spendingType: 'Fixed',
          userId: '001',
          wantNeed: 'Need',
        ),
        ExpenseModel(
          category: 'Other',
          amount: '500',
          item: 'Give away',
          spendingType: 'Variable',
          userId: '001',
          wantNeed: 'Want',
        ),
      ],
    ),
    ExpenseListModel(
      date: DateFormat.yMd().format(DateTime(2024, 6, 15)),
      expense: [
        ExpenseModel(
          category: 'Transportation',
          amount: '250',
          item: 'Transport',
          spendingType: 'Fixed',
          userId: '001',
          wantNeed: 'Need',
        ),
        ExpenseModel(
          category: 'Other',
          amount: '500',
          item: 'Give away',
          spendingType: 'Variable',
          userId: '001',
          wantNeed: 'Want',
        ),
        ExpenseModel(
          category: 'Feeding',
          amount: '2500',
          item: 'Food',
          spendingType: 'Variable',
          userId: '001',
          wantNeed: 'Need',
        ),
        ExpenseModel(
          category: 'Subscription',
          amount: '1000',
          item: 'Internet',
          spendingType: 'Fixed',
          userId: '001',
          wantNeed: 'Want',
        ),
        ExpenseModel(
          category: 'Other',
          amount: '500',
          item: 'Give away',
          spendingType: 'Variable',
          userId: '001',
          wantNeed: 'Want',
        ),
      ],
    ),
    ExpenseListModel(
      date: DateFormat.yMd().format(DateTime(2024, 6, 12)),
      expense: [
        ExpenseModel(
          category: 'Other',
          amount: '500',
          item: 'Give away',
          spendingType: 'Variable',
          userId: '001',
          wantNeed: 'Want',
        ),
      ],
    ),
  ];

  Future<void> getExpenses() async {
    // Change the route to get that of users and not expenses
    final uri = Uri.parse('http://192.168.8.156:8080/expenses/get');
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
}
