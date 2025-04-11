import 'package:app_heart_link/core/base/base_state.dart';

class SplashState extends BaseState<SplashState> {
  final int count;

  const SplashState({this.count = 0, super.isLoading = false});

  @override
  SplashState copyWith({bool? isLoading, int? count}) {
    return SplashState(isLoading: isLoading ?? super.isLoading, count: count ?? this.count);
  }
}
