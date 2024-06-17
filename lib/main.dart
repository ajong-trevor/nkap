import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/app_colors.dart';
import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Nkap',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
          surface: AppColors.backgroundColor,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.whiteColor),
          bodySmall: TextStyle(color: AppColors.whiteColor),
          bodyMedium: TextStyle(color: AppColors.whiteColor),
          headlineMedium: TextStyle(color: AppColors.whiteColor),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundColor,
          iconTheme: IconThemeData(color: AppColors.whiteColor),
        ),
        scaffoldBackgroundColor: AppColors.backgroundColor,
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: appRoutes,
    );
  }
}
