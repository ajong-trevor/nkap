import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class BudgetItem extends StatelessWidget {
  const BudgetItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      padding: const EdgeInsets.all(15.0),
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
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: AppColors.whiteColor,
          style: BorderStyle.solid,
          width: 0.2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: AppColors.grayColor.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: const Icon(
                  Icons.attach_money_outlined,
                  color: AppColors.whiteColor,
                ),
              ),
              const SizedBox(width: 10.0),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '15000 FCFA',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 24.0,
                    ),
                  ),
                  Text(
                    'April',
                    style: TextStyle(
                      color: AppColors.grayColor,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '08/04/2024',
                style: TextStyle(
                  fontSize: 10.0,
                  color: AppColors.grayColor.withOpacity(
                    0.68,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'MTN MoMo',
                style: TextStyle(
                  fontSize: 10.0,
                  color: AppColors.secondaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
