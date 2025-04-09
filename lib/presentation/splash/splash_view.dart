import 'package:app_heart_link/core/constants/constants.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: AppColors.primaryColor,
          child: Text(
            "Heart Link",
            style: TextStyle(
              color: AppColors.white,
              fontSize: AppSizes.fontSize30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
