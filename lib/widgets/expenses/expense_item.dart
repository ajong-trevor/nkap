import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class ExpenseItem extends StatelessWidget {
  final String item;
  final String spendingType;
  final String wantNeed;
  final String amount;
  const ExpenseItem(
      {required this.amount,
      required this.item,
      required this.spendingType,
      required this.wantNeed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.whiteColor.withOpacity(0.2),
            AppColors.whiteColor.withOpacity(0.05),
          ],
        ),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: AppColors.whiteColor,
          style: BorderStyle.solid,
          width: 0.2,
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item),
          Text(
            spendingType,
            style: TextStyle(
              color: spendingType == 'Variable'
                  ? AppColors.redColor
                  : AppColors.greenColor,
            ),
          ),
          Text(
            wantNeed,
            style: TextStyle(
              color: wantNeed == 'Need'
                  ? AppColors.yellowColor
                  : AppColors.primaryColor,
            ),
          ),
          Text('${amount} FCFA'),
        ],
      ),
    );
  }
}
