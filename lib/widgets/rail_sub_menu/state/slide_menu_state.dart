import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/slide_menu_data.dart';

part 'slide_menu_state.freezed.dart';


@freezed
class SlideMenuState with _$SlideMenuState {
  factory SlideMenuState({
    /// Current menu data
    @Default([])
    final List<SlideMenuData> menuData,
    /// If there is a submenu
    @Default(false)  bool onSubMenu,
    /// Rail tap > submenu Index
    int? onSubMenuIndex,
    /// ID when an item in the submenu is selected
    String? selectedSubItemId, // 6자리 짧은 ID


  }) = _SlideMenuState;

  const SlideMenuState._();


}