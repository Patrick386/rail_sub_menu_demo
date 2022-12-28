import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../logging.dart';
import '../widgets/rail_sub_menu/model/slide_menu_data.dart';
import '../widgets/rail_sub_menu/state/slide_menu_state.dart';

final StateNotifierProvider<SubMenuController, SlideMenuState>
    railSubMenuController = StateNotifierProvider((ref) => SubMenuController());

/// Navigation rail > submenu controller
class SubMenuController extends StateNotifier<SlideMenuState> {
  SubMenuController() : super(SlideMenuState());

  /// When tapped from the submenu
  setSelectedItemMenu(String? id) =>
      state = state.copyWith(selectedSubItemId: id);

  /// Submenu display status
  /// When you tap the navigation nail menu,
  /// Set status whether you want to move or display submenus
  setSubMenuView(int index, List<SlideMenuData>? slideMenuData) {
    /// New rail menu tap
    /// Initialize submenu when same menu is clicked
    /// When showing the submenu for the first time, the active item menu is first.

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
      state = state.copyWith(
          onSubMenu: true,
          selectedSubItemId: id,
          menuData: slideMenuData,
          onSubMenuIndex: index
      );
      logger.info('SlideMenu Active >>:$id');
    }else{
      logger.info('SlideMenu Null >>:$id');
      state = state.copyWith(onSubMenu: false, selectedSubItemId: null, menuData: [], onSubMenuIndex: index);
    }


    /// You can control the menu within SubMenuController.
    /// 0: Home page
    // if (index == 0) {
    //   state = state.copyWith(onSubMenu: true, onSubMenuIndex: index);
    // }
    //
    // /// 1: information
    // if (index == 1) {
    //   state = state.copyWith(onSubMenu: false, onSubMenuIndex: index);
    // }
    //
    // /// 2: business
    // if (index == 2) {
    //   state = state.copyWith(onSubMenu: true, onSubMenuIndex: index);
    // }

  }
}
