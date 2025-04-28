import 'package:app_heart_link/core/base/base_view.dart';
import 'package:flutter/material.dart';

class DashboardView extends BaseView {
  const DashboardView({super.key});

  @override
  Widget body(BuildContext context) {
    return Center(child: Text("dashboard"),);
  }
}