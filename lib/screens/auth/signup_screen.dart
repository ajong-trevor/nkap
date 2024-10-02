import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/auth/auth_screens_header.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../utils/form_validators.dart';
import '../../services/auth_services.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _nameEditingController = TextEditingController();

  final _emailEditingController = TextEditingController();

  final _phoneEditingController = TextEditingController();

  final _passwordEditingController = TextEditingController();

  final _confirmPasswordEditingController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final validator = FormValidators();

  final services = AuthServices();

  void onSignup() {
    if (_formKey.currentState!.validate()) {
      services
          .registerUser(
        _nameEditingController.text,
        _emailEditingController.text,
        _phoneEditingController.text,
        _passwordEditingController.text,
      )
          .then((user) {
        print('User created successfully');
        Get.offAllNamed('/account-created');
      });
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
              subTitle:
                  "Let's get your account up and running in just some few steps",
              title: 'Create an account',
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
                      hint: 'Full Name',
                      textInputType: TextInputType.name,
                      isPasswordField: false,
                      textEditingController: _nameEditingController,
                      validator: validator.nameValidation,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomTextFormField(
                      hint: 'Email Address',
                      textInputType: TextInputType.emailAddress,
                      isPasswordField: false,
                      textEditingController: _emailEditingController,
                      validator: validator.emailValidation,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomTextFormField(
                      hint: 'Phone Number',
                      textInputType: TextInputType.number,
                      isPasswordField: false,
                      textEditingController: _phoneEditingController,
                      validator: validator.phoneValidation,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomTextFormField(
                      hint: 'Password',
                      textInputType: TextInputType.visiblePassword,
                      isPasswordField: true,
                      textEditingController: _passwordEditingController,
                      validator: validator.passwordValidation,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomTextFormField(
                      hint: 'Confirm Password',
                      textInputType: TextInputType.visiblePassword,
                      isPasswordField: true,
                      textEditingController: _confirmPasswordEditingController,
                      validator: validator.confrimPasswordValidation,
                    ),
                    CustomButton(
                      text: 'Sign up',
                      pressed: () => setState(() {
                        onSignup();
                      }),
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
