import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_dropdown_menu.dart';
import '../widgets/custom_text_form_field.dart';
import '../utils/form_validators.dart';

enum BestTutorSite { daily, weekly }

class CreateBudgetScree extends StatefulWidget {
  const CreateBudgetScree({super.key});

  @override
  State<CreateBudgetScree> createState() => _CreateBudgetScreeState();
}

class _CreateBudgetScreeState extends State<CreateBudgetScree> {
  @override
  Widget build(BuildContext context) {
    final _amountEditingController = TextEditingController();
    final _phoneEditingController = TextEditingController();
    final validator = FormValidators();

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

    final List<String> budgetType = <String>['Weekly', 'Monthly'];

    BestTutorSite? _site = BestTutorSite.daily;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create a budget',
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomDropdownMenu(list: categories, hint: 'Category'),
            const SizedBox(height: 20.0),
            CustomTextFormField(
              hint: 'Amount',
              textInputType: TextInputType.number,
              isPasswordField: false,
              textEditingController: _amountEditingController,
              validator: validator.nameValidation,
            ),
            const SizedBox(height: 15.0),
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: AppColors.whiteColor,
              ),
              onPressed: () {},
              label: Text('Add'),
              icon: Icon(Icons.add),
            ),
            const SizedBox(height: 40.0),
            CustomDropdownMenu(list: budgetType, hint: 'Budget type'),
            const SizedBox(height: 20.0),
            CustomTextFormField(
              hint: 'Phone',
              textInputType: TextInputType.phone,
              isPasswordField: false,
              textEditingController: _phoneEditingController,
              validator: validator.phoneValidation,
            ),
            const SizedBox(height: 20.0),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Send allowance',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: AppColors.grayColor),
                  ),
                  Column(
                    children: <Widget>[
                      ListTile(
                        minVerticalPadding: 0,
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text(
                          'Daily',
                          style: TextStyle(color: AppColors.whiteColor),
                        ),
                        leading: Radio(
                          value: BestTutorSite.daily,
                          groupValue: _site,
                          onChanged: (BestTutorSite? value) {
                            setState(() {
                              _site = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text(
                          'Weekly',
                          style: TextStyle(color: AppColors.whiteColor),
                        ),
                        leading: Radio(
                          value: BestTutorSite.weekly,
                          groupValue: _site,
                          onChanged: (BestTutorSite? value) {
                            setState(() {
                              _site = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            CustomButton(pressed: () {}, text: 'Create Buddget'),
          ],
        ),
      ),
    );
  }
}
