import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './app_colors.dart';

void loader() {
  Get.bottomSheet(
    Container(
      width: double.infinity,
      // height: 200.0,
      child: Wrap(
        runSpacing: 20.0,
        spacing: 20.0,
        children: [
          Center(
            child: LinearProgressIndicator(),
          ),
        ],
      ),
    ),
    backgroundColor: AppColors.backgroundColor,
    isScrollControlled: true,
    enableDrag: false,
    isDismissible: false,
  );
}
