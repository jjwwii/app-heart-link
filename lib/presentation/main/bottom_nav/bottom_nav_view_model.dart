import 'package:get/get.dart';

import '../../../core/enums/bottom_nav_item.dart';

class BottomNavViewModel extends GetxController {
  final _currentTab = Rx<BottomNavItem>(BottomNavItem.send);
  final RxInt _currentIndex = BottomNavItem.send.index.obs;

  BottomNavItem get currentTab => _currentTab.value;

  int get currentIndex => tabs.indexOf(_currentTab.value);

  final tabs = [
    BottomNavItem.send,
    BottomNavItem.receive,
    BottomNavItem.dashboard,
    BottomNavItem.profile,
  ];

  void changeTab(int index) => _currentTab.value = tabs[index];
}