import 'package:flutter/material.dart';

import './budget_item.dart';

class BudegtsList extends StatelessWidget {
  const BudegtsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      itemBuilder: (context, index) {
        return const BudgetItem();
      },
    );
  }
}
