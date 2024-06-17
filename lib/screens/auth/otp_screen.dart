import 'package:flutter/material.dart';

import '../../widgets/auth/auth_screens_header.dart';
import '../../widgets/auth/custom_otp_text_form_field.dart';
import '../../widgets/custom_button.dart';
import '../../utils/app_colors.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AuthScreensHeader(
              title: 'Phone Verification',
              subTitle:
                  "Enter the 4 digit code that was sent to (+237)671****11",
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              width: MediaQuery.of(context).size.width * 0.6,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomOtpTextFormField(),
                  CustomOtpTextFormField(),
                  CustomOtpTextFormField(),
                  CustomOtpTextFormField(),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: CustomButton(
                text: 'Verify',
                pressed: () {},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Didn't recieve code?"),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'resend',
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
    );
  }
}
