import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/slide_menu_data.dart';

part 'slide_menu_state.freezed.dart';

@freezed
class SlideMenuState with _$SlideMenuState {
  factory SlideMenuState({
    /// 현재 메뉴데이터
    @Default([])
    final List<SlideMenuData> menuData,
    /// 서브메뉴가 있는 경우
    /// 네비게이션 네일 메뉴 클릭 > 서브메뉴가 있는 경우 true
    @Default(false)  bool onSubMenu,
    /// 서브메뉴 open 또는 close, true: 안 보임
    @Default(true)  bool visible,
    /// 네비게이션 네일 메뉴 클릭 > 네일 인덱스
    int? onSubMenuIndex,
    /// 서브메뉴의 아이템을 선택했을 때 id
    String? selectedSubItemId, // 6자리 짧은 ID
  }) = _SlideMenuState;
  const SlideMenuState._();
}