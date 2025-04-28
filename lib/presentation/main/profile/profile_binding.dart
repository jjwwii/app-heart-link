import 'package:app_heart_link/presentation/main/profile/profile_view_model.dart';
import 'package:get/get.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileViewModel());
  }

}