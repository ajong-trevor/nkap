import 'package:flutter/material.dart';

import '../screens/expense_screen.dart';
import '../screens/budget_screen.dart';
import '../screens/savings_screen.dart';
import '../screens/account_screen.dart';
import '../utils/app_colors.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  List<Widget> screenList = [
    const ExpenseScreen(),
    const BudgetScreen(),
    const SavingsScreen(),
    const AccountScreen(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.darkBlueColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.whiteColor,
        unselectedItemColor: AppColors.grayColor,
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              decoration: currentIndex == 0
                  ? BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(50.0),
                    )
                  : null,
              child: const Icon(Icons.currency_exchange_outlined),
            ),
            label: 'Expenses',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              decoration: currentIndex == 1
                  ? BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(50.0),
                    )
                  : null,
              child: const Icon(Icons.account_balance_wallet_outlined),
            ),
            label: 'Budgets',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              decoration: currentIndex == 2
                  ? BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(50.0),
                    )
                  : null,
              child: const Icon(Icons.savings_outlined),
            ),
            label: 'Savings',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              decoration: currentIndex == 3
                  ? BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(50.0),
                    )
                  : null,
              child: const Icon(Icons.person_outline_rounded),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
