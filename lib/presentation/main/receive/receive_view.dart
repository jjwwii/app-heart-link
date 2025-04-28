import 'package:app_heart_link/core/base/base_view.dart';
import 'package:app_heart_link/presentation/main/receive/receive_view_model.dart';
import 'package:flutter/material.dart';

class ReceiveView extends BaseView<ReceiveViewModel> {
  const ReceiveView({super.key});

  @override
  Widget body(BuildContext context) {
    return Center(child: Text("Receive"),);
  }
}