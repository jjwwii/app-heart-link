import 'package:app_heart_link/presentation/main/bottom_nav/bottom_nav_view_model.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavView extends StatelessWidget {
  BottomNavView({super.key});

  final _controller = Get.find<BottomNavViewModel>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() {
        return BottomNavigationBar(
          items: navigationBarItem(),
          currentIndex: _controller.currentIndex,
          onTap: _controller.changeTab,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        );
      }),
    );
  }

  List<BottomNavigationBarItem> navigationBarItem() {
    return _controller.tabs
        .mapIndexed(
          (index, tab) => tab.toNavigationBarItem(
            isActivated: _controller.currentIndex == index,
          ),
        )
        .toList();
  }
}
