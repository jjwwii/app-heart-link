import 'package:app_heart_link/presentation/main/dashboard/dashboard_view_model.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardViewModel());
  }
}