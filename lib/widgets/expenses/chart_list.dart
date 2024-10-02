import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../utils/app_colors.dart';

class ChartList extends StatelessWidget {
  const ChartList({super.key});

  @override
  Widget build(BuildContext context) {
    const Map<String, double> categoryDataMap = {
      "Feeding": 25,
      "Subscription": 35,
      "Entertainment": 10,
      "Transportation": 30,
    };

    const Map<String, double> typeDataMap = {
      "Variable": 75,
      "Fixed": 25,
    };

    const Map<String, double> optionDataMap = {
      "Want": 62,
      "Need": 38,
    };

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Category Breakdown',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                  Center(
                    child: PieChart(
                      dataMap: categoryDataMap,
                      chartLegendSpacing: 20,
                      chartRadius: MediaQuery.of(context).size.width / 2.2,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Type Breakdown',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                  Center(
                    child: PieChart(
                      dataMap: typeDataMap,
                      chartLegendSpacing: 20,
                      chartRadius: MediaQuery.of(context).size.width / 2.2,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Want/Need Breakdown',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                  Center(
                    child: PieChart(
                      dataMap: optionDataMap,
                      chartLegendSpacing: 20,
                      chartRadius: MediaQuery.of(context).size.width / 2.2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
