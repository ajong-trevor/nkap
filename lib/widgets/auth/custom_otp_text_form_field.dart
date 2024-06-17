import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/app_colors.dart';

class CustomOtpTextFormField extends StatelessWidget {
  const CustomOtpTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: TextFormField(
        style: Theme.of(context).textTheme.headlineMedium,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.darkBlueColor,
          contentPadding: const EdgeInsets.all(0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              style: BorderStyle.solid,
              color: AppColors.darkBlueColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              style: BorderStyle.solid,
              color: AppColors.darkBlueColor,
            ),
          ),
        ),
      ),
    );
  }
}
