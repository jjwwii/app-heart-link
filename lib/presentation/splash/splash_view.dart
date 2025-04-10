import 'package:app_heart_link/core/base/base_view.dart';
import 'package:app_heart_link/core/di/app_providers.dart';
import 'package:app_heart_link/presentation/splash/splash_state.dart';
import 'package:app_heart_link/presentation/splash/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashView extends BaseView<SplashState, SplashViewModel> {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends BaseViewState<SplashState, SplashViewModel, SplashView> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) => null;

  @override
  AutoDisposeStateNotifierProvider<SplashViewModel, SplashState> registerViewModel() =>
      AppProviders.splashViewModelProvider;

  @override
  Widget body(BuildContext context) {
    return Text("ttttt", style: TextStyle(color: Colors.black),);
  }
}
