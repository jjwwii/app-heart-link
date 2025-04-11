// 모든 상태 클래스의 기본이 되는 클래스
// ViewModel에서 관리
abstract class BaseState<T extends BaseState<T>> {
  final bool isLoading;

  const BaseState({this.isLoading = false});

  T copyWith({bool? isLoading});
}
