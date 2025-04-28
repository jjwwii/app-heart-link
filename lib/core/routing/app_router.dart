import 'package:app_heart_link/core/routing/app_route_path.dart';
import 'package:app_heart_link/presentation/main/main_binding.dart';
import 'package:app_heart_link/presentation/main/main_view.dart';
import 'package:app_heart_link/presentation/main/profile/profile_binding.dart';
import 'package:app_heart_link/presentation/main/profile/profile_view.dart';
import 'package:get/get.dart';

abstract class AppPages {
  AppPages._();

  static const initial = Routes.main;

  static final routes = [
    GetPage(name: Routes.main, page: () => MainView(), binding: MainBinding(),),
    GetPage(
      name: Routes.profile,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    // GetPage(name: Routes.receive, page: () => ReceiveView(), binding: ReceiveBinding()),
    // GetPage(name: Routes.dashboard, page: () => DashboardView(), binding: DashboardBinding()),
    // GetPage(name: Routes.profile, page: () => ProfileView(), binding: ProfileBinding()),
  ];
}
