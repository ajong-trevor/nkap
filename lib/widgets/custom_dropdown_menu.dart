import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomDropdownMenu extends StatefulWidget {
  final List<String> list;
  final String hint;
  const CustomDropdownMenu({required this.list, required this.hint, super.key});

  @override
  State<CustomDropdownMenu> createState() => _CustomDropdownMenuState();
}

class _CustomDropdownMenuState extends State<CustomDropdownMenu> {
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      hintText: widget.hint,
      expandedInsets: EdgeInsets.symmetric(vertical: double.infinity),
      menuStyle: MenuStyle(alignment: Alignment.bottomLeft),
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries:
          widget.list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.darkBlueColor,
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
      ),
    );
  }
}
