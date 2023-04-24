import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../logging.dart';
import '../widgets/rail_sub_menu/model/slide_menu_data.dart';
import '../widgets/rail_sub_menu/state/slide_menu_state.dart';

final StateNotifierProvider<SubMenuController, SlideMenuState>
_provider = StateNotifierProvider((ref) => SubMenuController());

/// Navigation rail > submenu controller
class SubMenuController extends StateNotifier<SlideMenuState> {
  SubMenuController() : super(SlideMenuState());

  /// Provider
  static StateNotifierProvider<SubMenuController, SlideMenuState> get provider =>_provider;

  /// 서브메뉴에서 탭했을 경우
  setSelectedItemMenu(String? id) =>
      state = state.copyWith(selectedSubItemId: id);


  /// 서브메뉴를 닫거나 오픈
  /// false: close
  setVisibility(bool v)=> state = state.copyWith(visible: v);

  /// 서브메뉴 표시 유무
  /// 네비게이션 네일 메뉴를 탭했을 때
  /// 그대도 이동 할 지, 서브메뉴를 표시할 지 상태 설정
  /// 서브메뉴가 있는 경우 설정, 네일 메뉴를 탭하면 설정된다.
  setSubMenuView(int index, List<SlideMenuData>? slideMenuData) {
    /// 새로 클릭했을 때
    /// 동일한 메뉴를 클랙했을 때 서브메뉴 초기화
    /// 처음 서브메뉴를 보여줄때 Active 아이템 메뉴는 첫번째로 한다.

    String? id;
    if(slideMenuData !=null) {
      /// If there is a submenu
      if (slideMenuData.first.itemMenu.isEmpty) {
        /// There's no Header-only menu, or item menu
        id = slideMenuData.first.header!.id;
      } else {
        /// The first item menu is Active
        id = slideMenuData.first.itemMenu.first.id;
      }
      /// 서브메뉴가 있는 경우 설정, 네일 메뉴를 탭하면 설정된다.
      state = state.copyWith(
          onSubMenu: true,
          visible: true, // 서브메뉴가 보이도록 설정
          selectedSubItemId: id,
          menuData: slideMenuData,
          onSubMenuIndex: index
      );
      logger.info('SlideMenu Active >>:$id');
    }else {
      logger.info('SlideMenu Null >>:$id');
      state = state.copyWith(onSubMenu: false,
          selectedSubItemId: null,
          menuData: [],
          onSubMenuIndex: index);
    }
  }


}