import 'package:app_heart_link/core/base/base_view_model.dart';
import 'package:app_heart_link/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseView<VM extends BaseViewModel> extends GetView<VM> {
  const BaseView({super.key});

  PreferredSizeWidget? appBar(BuildContext context) => null;

  Widget body(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appBar(context),
          body: SafeArea(child: body(context).marginSymmetric(horizontal: screenHorizontalPadding)),
          bottomNavigationBar: bottomNavigationBar(context),
        ),
      ],
    );
  }

  Widget? bottomNavigationBar(BuildContext context) => null;

  double get screenHorizontalPadding => AppSizes.fontSize10;

  Color backgroundColor() => AppColors.white;
}