import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../widgets/expenses/expenses_list.dart';
import '../widgets/expenses/chart_list.dart';
import '../widgets/custom_text_form_field.dart';
import '../utils/form_validators.dart';
import '../widgets/custom_button.dart';
import '../services/expense_services.dart';
import '../widgets/custom_dropdown_menu.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  final expenses = ExpenseServices().expenses;

  @override
  void initState() {
    print(expenses);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final formValidator = FormValidators();
    final _itemTextEditingController = TextEditingController();
    final _amountTextEditingController = TextEditingController();

    final List<String> categories = <String>[
      'Transportation',
      'Feeding',
      'Subscription',
      'Travel',
      'Eating Out',
      'Drinks',
      'Health',
      'Groceries'
    ];

    final List<String> type = <String>['Varaible', 'Fixed'];

    final List<String> wantNeed = <String>['Want', 'Need'];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        titleSpacing: 10.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
        title: const Text(
          'Nkap',
          style: TextStyle(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            bottom: const TabBar(
              dividerHeight: 0,
              unselectedLabelColor: AppColors.whiteColor,
              labelColor: AppColors.secondaryColor,
              indicatorColor: AppColors.secondaryColor,
              tabs: [
                Tab(
                  text: 'History',
                ),
                Tab(
                  text: 'Charts',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ExpensesList(
                  expenses: expenses,
                ),
              ),
              const ChartList(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        onPressed: () {
          // service.getExpenses().then(
          //       (expense) => print('Expenses gotten successfully :)'),
          //     );
          Get.bottomSheet(
            Container(
              margin: const EdgeInsets.only(left: 30.0, right: 30, top: 30),
              child: Wrap(
                runSpacing: 20.0,
                children: [
                  CustomTextFormField(
                    hint: 'Item',
                    textInputType: TextInputType.text,
                    isPasswordField: false,
                    textEditingController: _itemTextEditingController,
                    validator: formValidator.nameValidation,
                  ),
                  CustomTextFormField(
                    hint: 'Amount',
                    textInputType: TextInputType.number,
                    isPasswordField: false,
                    textEditingController: _amountTextEditingController,
                    validator: formValidator.nameValidation,
                  ),
                  CustomDropdownMenu(list: categories, hint: 'Category'),
                  CustomDropdownMenu(list: type, hint: 'Type'),
                  CustomDropdownMenu(list: wantNeed, hint: 'Want/Need'),
                  CustomButton(
                    pressed: () {},
                    text: 'Add Expense',
                    topMargin: 10.0,
                  ),
                ],
              ),
            ),
            backgroundColor: AppColors.backgroundColor,
            isScrollControlled: true,
            enableDrag: false,
          );
        },
        child: const Icon(
          Icons.add,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
