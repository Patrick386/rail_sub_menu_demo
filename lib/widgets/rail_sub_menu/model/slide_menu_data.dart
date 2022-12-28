import 'package:freezed_annotation/freezed_annotation.dart';

part 'slide_menu_data.freezed.dart';


@freezed
class SlideMenuData with _$SlideMenuData {
  factory SlideMenuData({
  final ItemMenuData? header,
    ///Expansion if true, itemMenu if false is ignored.
    @Default(false)
    final bool expansion,
    @Default([])
    final List<ItemMenuData> itemMenu,

    @Default(false)  bool selected,
  }) = _SlideMenuData;

  const SlideMenuData._();

}

@freezed
class ItemMenuData with _$ItemMenuData {
  factory ItemMenuData({
    @Default('') final String id, // 6-digit short ID
    @Default('') final String title, //
    final String? routerPath, // Router path
    @Default(false) final bool selected,
  }) = _ItemMenuData;

  const ItemMenuData._();

}