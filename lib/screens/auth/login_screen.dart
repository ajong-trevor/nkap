import "package:flutter/material.dart";
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/auth/auth_screens_header.dart';
import '../../utils/form_validators.dart';
import '../../services/auth_services.dart';
import '../../utils/loader.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailEditingController;

  late TextEditingController _passwordEditingController;

  final _formKey = GlobalKey<FormState>();

  final validator = FormValidators();

  final services = AuthServices();

  late bool isLoading;

  @override
  void initState() {
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
    super.initState();
    isLoading = false;
  }

  void onLogin() {
    if (_formKey.currentState!.validate()) {
      services
          .login(_emailEditingController.text, _passwordEditingController.text)
          .then((user) {
        isLoading = false;
        Get.offAllNamed('/');
        Get.snackbar(
          'Logged In',
          'You have been successfully logged in :)',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: AppColors.primaryColor.withOpacity(0.8),
          colorText: AppColors.whiteColor,
          duration: Duration(microseconds: 3000),
        );
      });
      _passwordEditingController = TextEditingController();
    }
    return;
  }

  @override
  void dispose() {
    _emailEditingController.dispose();
    _passwordEditingController.dispose();
    super.dispose();
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
                      hint: 'Email',
                      textInputType: TextInputType.emailAddress,
                      isPasswordField: false,
                      textEditingController: _emailEditingController,
                      validator: validator.emailValidation,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    CustomTextFormField(
                      hint: 'Password',
                      textInputType: TextInputType.visiblePassword,
                      isPasswordField: true,
                      textEditingController: _passwordEditingController,
                      validator: validator.passwordValidation,
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
                      pressed: () {
                        setState(() {
                          isLoading = true;
                        });
                        onLogin();
                        if (isLoading) {
                          loader();
                        }
                      },
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
