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
  AutoDisposeStateNotifierProvider<SplashViewModel, SplashState> registerViewModel() =>
      AppProviders.splashViewModelProvider;

  @override
  PreferredSizeWidget? appBar(
    BuildContext context,
    SplashState viewState,
    SplashViewModel viewModel,
  ) => null;

  @override
  Widget body(BuildContext context, SplashState viewState, SplashViewModel viewModel) {
    return Center(child: GestureDetector(onTap: () {
      viewModel.plusCountTmp();
      print("count: ${viewState.count}");
    }, child: Text("data")));
  }
}
