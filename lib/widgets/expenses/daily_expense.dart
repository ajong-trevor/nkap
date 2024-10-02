import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../utils/app_colors.dart';
import './expense_item.dart';
import '../../models/expense_model.dart';

class DailyExpense extends StatelessWidget {
  final String date;
  final List<ExpenseModel> expense;
  const DailyExpense({required this.date, required this.expense, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 25.0),
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
          decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(50.0)),
          child: Text(
              date == DateFormat.yMd().format(DateTime.now()) ? 'Today' : date),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5.0),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: expense.length,
            itemBuilder: (context, index) {
              return ExpenseItem(
                amount: expense[index].amount,
                item: expense[index].item,
                spendingType: expense[index].spendingType,
                wantNeed: expense[index].wantNeed,
              );
            },
          ),
        ),
      ],
    );
  }
}
