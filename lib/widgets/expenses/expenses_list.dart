import 'package:flutter/material.dart';

import './daily_expense.dart';
import '../../models/expense_list_model.dart';

class ExpensesList extends StatelessWidget {
  final List<ExpenseListModel> expenses;
  const ExpensesList({required this.expenses, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        return DailyExpense(
          date: expenses[index].date,
          expense: expenses[index].expense,
        );
      },
    );
  }
}
