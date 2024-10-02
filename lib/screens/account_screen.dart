import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 45.0),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 200.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.whiteColor.withOpacity(0.2),
                          AppColors.whiteColor.withOpacity(0.05),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: AppColors.whiteColor,
                        style: BorderStyle.solid,
                        width: 0.2,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Ajong Trevor',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          'trevor.ajong@gmail.com',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: AppColors.grayColor.withOpacity(1.0),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 20.0,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: const Text(
                            'Joined: 01 June 2024',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -45.0,
                    left: MediaQuery.of(context).size.width * 0.32,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(
                          color: AppColors.secondaryColor,
                          width: 4.0,
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/profile-pic.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              GestureDetector(
                onTap: () => print('Account infos tapped'),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.whiteColor.withOpacity(0.2),
                        AppColors.whiteColor.withOpacity(0.05),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: AppColors.whiteColor,
                      style: BorderStyle.solid,
                      width: 0.2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Account Infos',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            'View/Edit Accoutn Infos',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: AppColors.grayColor.withOpacity(1.0),
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.arrowColor,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              GestureDetector(
                onTap: () => Get.offAllNamed('/login'),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.whiteColor.withOpacity(0.2),
                        AppColors.whiteColor.withOpacity(0.05),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: AppColors.whiteColor,
                      style: BorderStyle.solid,
                      width: 0.2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Sign Out',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: AppColors.redColor,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            'Sign out from account',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: AppColors.grayColor.withOpacity(1.0),
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.arrowColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
