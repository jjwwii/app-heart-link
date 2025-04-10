import 'package:app_heart_link/core/base/base_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class BaseViewModel<BS extends BaseState> extends StateNotifier<BS> {
  BaseViewModel(super.state);

  void setLoading(bool isLoading) {
    state = state.copyWith(isLoading) as BS;
  }

  void init() {}

  void updateState(BS newState) {
    state = newState;
  }
}