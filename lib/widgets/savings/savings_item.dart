import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class SavingsItem extends StatelessWidget {
  final String amount;
  final String savingFor;
  final String peroidLeft;
  final String numberOfPeriodLeft;
  const SavingsItem({
    required this.amount,
    required this.numberOfPeriodLeft,
    required this.peroidLeft,
    required this.savingFor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.only(top: 15.0),
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
          const SizedBox(width: 15.0),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(savingFor, style: TextStyle(fontSize: 15.0)),
                        const SizedBox(height: 2.0),
                        Text(
                          '${numberOfPeriodLeft}${peroidLeft} left',
                          style: TextStyle(
                              fontSize: 15.0, color: AppColors.grayColor),
                        ),
                      ],
                    ),
                    Text('${amount} FCFA', style: TextStyle(fontSize: 15.0)),
                  ],
                ),
                const SizedBox(height: 5.0),
                Stack(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 4.0,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    Container(
                      width: peroidLeft == 'month'
                          ? 30
                          : peroidLeft == 'weeks'
                              ? 140.0
                              : 220,
                      height: 4.0,
                      decoration: BoxDecoration(
                        color: peroidLeft == 'month'
                            ? AppColors.redColor
                            : peroidLeft == 'weeks'
                                ? AppColors.yellowColor
                                : AppColors.greenColor,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
