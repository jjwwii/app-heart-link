// 모든 상태 클래스의 기본이 되는 클래스
// ViewModel에서 관리
class BaseState {
  final bool isLoading;

  const BaseState({this.isLoading = false});

  BaseState copyWith(bool? isLoading) {
    return BaseState(isLoading: isLoading ?? this.isLoading);
  }
}
