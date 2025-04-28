import 'package:app_heart_link/core/constants/constants.dart';
import 'package:app_heart_link/presentation/main/send/send_view.dart';
import 'package:flutter/material.dart';

enum BottomNavItem {
  send(Icons.home, "보내요", SendView()),
  receive(Icons.call_received, "받아요", SendView()),
  dashboard(Icons.dashboard, "통계", SendView()),
  profile(Icons.person, "내정보", SendView());

  const BottomNavItem(this.icon, this.tabName, this.firstPage);

  final IconData icon;
  final String tabName;
  final Widget firstPage;

  BottomNavigationBarItem toNavigationBarItem({required bool isActivated}) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        key: ValueKey(tabName),
        color: isActivated ? AppColors.black : Colors.amber,
      ),
      label: tabName,
    );
  }
}
