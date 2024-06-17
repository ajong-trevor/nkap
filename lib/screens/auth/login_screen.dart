import "package:flutter/material.dart";
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/auth/auth_screens_header.dart';
import '../../utils/form_validators.dart';
import '../../services/auth_services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneEditingController = TextEditingController();

  TextEditingController _passwordEditingController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final validator = FormValidators();

  final services = AuthServices();

  void onLogin() {
    if (_formKey.currentState!.validate()) {
      // print(_phoneEditingController.text);
      // print(_passwordEditingController.text);
      Get.toNamed('/otp');

      _passwordEditingController = TextEditingController();
    }
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AuthScreensHeader(
              title: 'Welcome back!',
              subTitle: "Let's get you back to managing your finance with ease",
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      hint: 'Phone Number',
                      textInputType: TextInputType.number,
                      isPasswordField: false,
                      textEditingController: _phoneEditingController,
                      isValid: validator
                          .phoneValidation(_phoneEditingController.text),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    CustomTextFormField(
                      hint: 'Password',
                      textInputType: TextInputType.visiblePassword,
                      isPasswordField: true,
                      textEditingController: _passwordEditingController,
                      isValid: validator
                          .passwordValidation(_passwordEditingController.text),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      alignment: const Alignment(1, 0),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    CustomButton(
                      text: 'Login',
                      pressed: () => setState(() {
                        onLogin();
                      }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account? "),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                          ),
                          onPressed: () => Get.toNamed('/signup'),
                          child: const Text(
                            'create one',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
