import 'package:app_heart_link/core/base/base_view.dart';
import 'package:app_heart_link/presentation/main/bottom_nav/bottom_nav_view.dart';
import 'package:app_heart_link/presentation/main/bottom_nav/bottom_nav_view_model.dart';
import 'package:app_heart_link/presentation/main/dashboard/dashboard_view.dart';
import 'package:app_heart_link/presentation/main/main_view_model.dart';
import 'package:app_heart_link/presentation/main/profile/profile_view.dart';
import 'package:app_heart_link/presentation/main/receive/receive_view.dart';
import 'package:app_heart_link/presentation/main/send/send_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/constants.dart';

class MainView extends BaseView<MainViewModel> {
  MainView({super.key});

  final bottomNavController = Get.find<BottomNavViewModel>();

  @override
  PreferredSizeWidget? appBar(BuildContext context) => AppBar(
    centerTitle: true,
    title: Obx(() {
      return Text(
        bottomNavController.tabs[bottomNavController.currentIndex].tabName,
        style: TextStyle(
          // height: 1.18,
          letterSpacing: -0.48,
          color: AppColors.appColor22,
          fontWeight: FontWeight.w700,
          fontSize: AppSizes.fontSize16,
        ),
      );
    }),
  );

  @override
  Widget body(BuildContext context) {
    return Obx(() {
      return IndexedStack(
        index: bottomNavController.currentIndex,
        children: [SendView(), ReceiveView(), DashboardView(), ProfileView()],
      );
    });
  }

  @override
  Widget? bottomNavigationBar(BuildContext context) {
    return BottomNavView();
  }
}
