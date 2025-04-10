import 'package:app_heart_link/core/base/base_view_model.dart';
import 'package:app_heart_link/presentation/splash/splash_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashViewModelProvider = StateNotifierProvider.autoDispose<SplashViewModel, SplashState>((ref) {
  return SplashViewModel();
});

class SplashViewModel extends BaseViewModel<SplashState> {
  SplashViewModel() : super(SplashState());
}