import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/auth/auth_screens_header.dart';
import '../../widgets/custom_button.dart';
import 'login_screen.dart';

class AccountCreatedScreen extends StatelessWidget {
  const AccountCreatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AuthScreensHeader(
              subTitle: "You're ready to go",
              title: 'Account created!',
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomButton(
                text: 'Back to login',
                pressed: () => Get.offAll(() => const LoginScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
