import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key});

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
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Transportation'),
          Text(
            'Variable',
            style: TextStyle(color: AppColors.redColor),
          ),
          Text(
            'Need',
            style: TextStyle(color: AppColors.yellowColor),
          ),
          Text('500 FCFA'),
        ],
      ),
    );
  }
}
