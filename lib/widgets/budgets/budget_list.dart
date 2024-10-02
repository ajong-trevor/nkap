import 'package:flutter/material.dart';

import './budget_item.dart';
import '../../models/budget_model.dart';

class BudegtsList extends StatelessWidget {
  final List<BudgetModel> budgets;
  const BudegtsList({required this.budgets, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: budgets.length,
      itemBuilder: (context, index) {
        return BudgetItem(
          amount: budgets[index].amount,
          date: budgets[index].date,
          month: budgets[index].month,
          paymentOption: budgets[index].paymentOption,
        );
      },
    );
  }
}
