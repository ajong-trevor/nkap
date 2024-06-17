import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/form_validators.dart';

class CustomTextFormField extends StatefulWidget {
  final String hint;
  final TextInputType textInputType;
  final bool isPasswordField;
  final TextEditingController textEditingController;
  final String? isValid;
  CustomTextFormField({
    required this.hint,
    required this.textInputType,
    required this.isPasswordField,
    required this.textEditingController,
    required this.isValid,
    super.key,
  });

  final validator = FormValidators();

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.textInputType,
      controller: widget.textEditingController,
      obscureText: widget.isPasswordField ? isVisible : false,
      validator: (value) => widget.isValid,
      onChanged: (context) => setState(() {
        widget.isValid;
      }),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.darkBlueColor,
        hintText: widget.hint,
        hintStyle: const TextStyle(
          color: AppColors.grayColor,
          fontSize: 20.0,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: AppColors.darkBlueColor,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: AppColors.darkBlueColor,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.red,
          ),
        ),
        suffixIcon: widget.isPasswordField
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                icon: Icon(isVisible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined),
              )
            : null,
        suffixIconColor: AppColors.whiteColor.withOpacity(0.4),
      ),
    );
  }
}
