import 'package:app_heart_link/core/base/base_view.dart';
import 'package:app_heart_link/presentation/main/profile/profile_view_model.dart';
import 'package:flutter/material.dart';

class ProfileView extends BaseView<ProfileViewModel> {
  const ProfileView({super.key});

  @override
  Widget body(BuildContext context) {
    return Center(child: Text("profile"));
  }
}