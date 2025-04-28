import 'package:app_heart_link/core/base/base_view.dart';
import 'package:app_heart_link/core/constants/constants.dart';
import 'package:app_heart_link/presentation/main/send/send_view_model.dart';
import 'package:flutter/material.dart';

class SendView extends BaseView<SendViewModel> {
  const SendView({super.key});

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: AppColors.appColorDB,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Icon(Icons.filter_list_outlined), Text("최신순")],
          ),
        ),
      ],
    );
  }
}
