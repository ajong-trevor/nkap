import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../widgets/savings/savings_list.dart';
import '../services/savings_services.dart';
import '../widgets/custom_text_form_field.dart';
import '../utils/form_validators.dart';
import '../widgets/custom_button.dart';

class SavingsScreen extends StatelessWidget {
  const SavingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final savingsServices = SavingsServices().savings;
    final formValidator = FormValidators();

    final _amountEditingController = TextEditingController();
    final _phoneEditingController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Savings',
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
                  color: AppColors.secondaryColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You Saved', style: TextStyle(fontSize: 12.0)),
                        const SizedBox(height: 10.0),
                        Row(
                          children: [
                            Text('21500', style: TextStyle(fontSize: 32.0)),
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
                                  onPressed: () {
                                    Get.bottomSheet(
                                      Container(
                                        margin: const EdgeInsets.only(
                                          left: 30.0,
                                          right: 30,
                                          top: 30,
                                        ),
                                        child: Wrap(
                                          runSpacing: 20.0,
                                          children: [
                                            CustomTextFormField(
                                              hint: 'Amount',
                                              textInputType:
                                                  TextInputType.number,
                                              isPasswordField: false,
                                              textEditingController:
                                                  _amountEditingController,
                                              validator:
                                                  formValidator.nameValidation,
                                            ),
                                            CustomTextFormField(
                                              hint: 'Phone',
                                              textInputType:
                                                  TextInputType.phone,
                                              isPasswordField: false,
                                              textEditingController:
                                                  _phoneEditingController,
                                              validator:
                                                  formValidator.nameValidation,
                                            ),
                                            CustomButton(
                                              pressed: () {},
                                              text: 'Save',
                                              topMargin: 10.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                      backgroundColor:
                                          AppColors.backgroundColor,
                                      isScrollControlled: true,
                                      enableDrag: false,
                                    );
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                                Text(
                                  'Add savings',
                                  style: TextStyle(fontSize: 8.0),
                                ),
                              ],
                            ),
                            SizedBox(width: 15.0),
                            Column(
                              children: [
                                IconButton(
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppColors.redColor,
                                  ),
                                  onPressed: () {
                                    Get.bottomSheet(
                                      Container(
                                        margin: const EdgeInsets.only(
                                          left: 30.0,
                                          right: 30,
                                          top: 30,
                                        ),
                                        child: Wrap(
                                          runSpacing: 20.0,
                                          children: [
                                            CustomTextFormField(
                                              hint: 'Amount',
                                              textInputType:
                                                  TextInputType.number,
                                              isPasswordField: false,
                                              textEditingController:
                                                  _amountEditingController,
                                              validator:
                                                  formValidator.nameValidation,
                                            ),
                                            CustomTextFormField(
                                              hint: 'Phone',
                                              textInputType:
                                                  TextInputType.phone,
                                              isPasswordField: false,
                                              textEditingController:
                                                  _phoneEditingController,
                                              validator:
                                                  formValidator.nameValidation,
                                            ),
                                            CustomButton(
                                              pressed: () {},
                                              text: 'Withdraw',
                                              topMargin: 10.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                      backgroundColor:
                                          AppColors.backgroundColor,
                                      isScrollControlled: true,
                                      enableDrag: false,
                                    );
                                  },
                                  icon: Icon(
                                    Icons.download,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                                Text(
                                  'Withdraw',
                                  style: TextStyle(fontSize: 8.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.savings,
                      size: 120.0,
                      color: Colors.black.withOpacity(0.2),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: const Text(
                  'Savings History',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              SavingsList(
                savings: savingsServices,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
