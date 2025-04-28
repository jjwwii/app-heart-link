import 'package:app_heart_link/presentation/main/dashboard/dashboard_binding.dart';
import 'package:app_heart_link/presentation/main/main_view_model.dart';
import 'package:app_heart_link/presentation/main/profile/profile_binding.dart';
import 'package:app_heart_link/presentation/main/receive/receive_binding.dart';
import 'package:app_heart_link/presentation/main/send/send_binding.dart';
import 'package:get/get.dart';

import 'bottom_nav/bottom_nav_view_model.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MainViewModel>(MainViewModel(), permanent: true);
    Get.put<BottomNavViewModel>(BottomNavViewModel(), permanent: true);

    SendBinding().dependencies();
    ReceiveBinding().dependencies();
    DashboardBinding().dependencies();
    ProfileBinding().dependencies();
  }
}
