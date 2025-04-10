import 'package:app_heart_link/presentation/splash/splash_state.dart';
import 'package:app_heart_link/presentation/splash/splash_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppProviders {
  AppProviders._();

  static final splashViewModelProvider =
      StateNotifierProvider.autoDispose<SplashViewModel, SplashState>((ref) => SplashViewModel());
}
