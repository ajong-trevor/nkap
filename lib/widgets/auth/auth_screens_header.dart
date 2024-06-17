import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class AuthScreensHeader extends StatelessWidget {
  final String title;
  final String subTitle;
  const AuthScreensHeader({
    required this.subTitle,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 45.0, vertical: 20.0),
            child: Text(
              subTitle,
              style: TextStyle(
                fontSize: 16.0,
                color: AppColors.whiteColor.withOpacity(0.5),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
