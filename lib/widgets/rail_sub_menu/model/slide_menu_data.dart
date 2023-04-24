import 'package:freezed_annotation/freezed_annotation.dart';

part 'slide_menu_data.freezed.dart';

@freezed
class SlideMenuData with _$SlideMenuData {
  factory SlideMenuData({
    final ItemMenuData? header,
    @Default([])
    final List<ItemMenuData> itemMenu,
    @Default(false)  bool selected,
  }) = _SlideMenuData;
  const SlideMenuData._();
}

@freezed
class ItemMenuData with _$ItemMenuData {
  factory ItemMenuData({
    @Default('') final String id, // 6자리 짧은 ID
    @Default('') final String title, //
    final String? routerName, // 라우터 이름

    @Default(false) final bool selected,
  }) = _ItemMenuData;
  const ItemMenuData._();
}