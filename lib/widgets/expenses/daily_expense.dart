import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import 'expense_item.dart';

class DailyExpense extends StatelessWidget {
  const DailyExpense({super.key});

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
          child: const Text('Today'),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5.0),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return const ExpenseItem();
            },
          ),
        ),
      ],
    );
  }
}
