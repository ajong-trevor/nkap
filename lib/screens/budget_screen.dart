import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../widgets/budgets/budget_list.dart';
import '../services/budget_services.dart';

class BudgetScreen extends StatefulWidget {
  const BudgetScreen({super.key});

  @override
  State<BudgetScreen> createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
  final budgetServices = BudgetServices().budgets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Budgets',
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You Bugeted', style: TextStyle(fontSize: 12.0)),
                        const SizedBox(height: 10.0),
                        Row(
                          children: [
                            Text('8000', style: TextStyle(fontSize: 32.0)),
                            SizedBox(width: 5.0),
                            Text('FCFA', style: TextStyle(fontSize: 12.0)),
                          ],
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          children: [
                            Column(
                              children: [
                                IconButton(
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppColors.yellowColor,
                                  ),
                                  onPressed: () =>
                                      Get.toNamed('/create-budget'),
                                  icon: Icon(
                                    Icons.add,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                                Text(
                                  'Add budget',
                                  style: TextStyle(fontSize: 8.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 120.0,
                      color: Colors.black.withOpacity(0.2),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: const Text(
                  'Budgets History',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              BudegtsList(
                budgets: budgetServices,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
