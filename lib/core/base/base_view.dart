import 'package:app_heart_link/core/base/base_state.dart';
import 'package:app_heart_link/core/base/base_view_model.dart';
import 'package:app_heart_link/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class BaseView<BS extends BaseState, VM extends BaseViewModel>
    extends ConsumerStatefulWidget {
  const BaseView({super.key});
}

abstract class BaseViewState<
  BS extends BaseState,
  VM extends BaseViewModel<BS>,
  BV extends BaseView<BS, VM>
>
    extends ConsumerState<BV> {
  /// 각 화면별 다른 ViewModel이 필요하기 때문에, 어떤 Provider를 사용할지는 상속받은 클래스에서 결정해야 함
  /// Flutter의 위젯 생명주기 상 initState에서 초기화 작업을 진행해야 함
  late final AutoDisposeStateNotifierProvider<VM, BS> viewModelProvider;

  @override
  void initState() {
    super.initState();
    viewModelProvider = registerViewModel();

    /// 화면이 렌더링 된 이후에 view_model init() 실행
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(viewModelProvider.notifier).init();
    });
  }

  AutoDisposeStateNotifierProvider<VM, BS> registerViewModel();

  PreferredSizeWidget? appBar(BuildContext context);

  Widget body(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(context), body: body(context),);
  }

  Widget buildLoadingWidget() {
    return Center(child: CircularProgressIndicator());
  }

  Widget? bottomSheet(BuildContext context, BS viewState) => null;

  Color backgroundColor() => AppColors.white;
}
