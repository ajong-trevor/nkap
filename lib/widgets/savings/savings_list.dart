import 'package:flutter/material.dart';

import './savings_item.dart';
import '../../models/savings_model.dart';

class SavingsList extends StatelessWidget {
  final List<SavingsModel> savings;
  const SavingsList({required this.savings, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: savings.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return SavingsItem(
          amount: savings[index].amount,
          numberOfPeriodLeft: savings[index].numberOfPeriodLeft,
          peroidLeft: savings[index].periodLeft,
          savingFor: savings[index].savingFor,
        );
      },
    );
  }
}
