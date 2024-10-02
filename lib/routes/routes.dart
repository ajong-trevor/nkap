import 'package:get/get.dart';

import '../screens/auth/login_screen.dart';
import '../screens/auth/account_created_screen.dart';
import '../screens/auth/otp_screen.dart';
import '../screens/auth/signup_screen.dart';
import '../widgets/custom_bottom_navigation.dart';
import '../screens/create_budget_scree.dart';

final appRoutes = [
  GetPage(
    name: '/',
    page: () => const CustomBottomNavigation(),
  ),
  GetPage(
    name: '/login',
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: '/signup',
    page: () => const SignupScreen(),
  ),
  GetPage(
    name: '/otp',
    page: () => const OtpScreen(),
  ),
  GetPage(
    name: '/account-created',
    page: () => const AccountCreatedScreen(),
  ),
  GetPage(
    name: '/create-budget',
    page: () => const CreateBudgetScree(),
    fullscreenDialog: true,
  ),
];
