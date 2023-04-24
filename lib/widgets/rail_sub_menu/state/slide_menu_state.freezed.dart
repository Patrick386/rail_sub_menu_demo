// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slide_menu_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SlideMenuState {
  /// 현재 메뉴데이터
  List<SlideMenuData> get menuData => throw _privateConstructorUsedError;

  /// 서브메뉴가 있는 경우
  /// 네비게이션 네일 메뉴 클릭 > 서브메뉴가 있는 경우 true
  bool get onSubMenu => throw _privateConstructorUsedError;

  /// 서브메뉴 open 또는 close, true: 안 보임
  bool get visible => throw _privateConstructorUsedError;

  /// 네비게이션 네일 메뉴 클릭 > 네일 인덱스
  int? get onSubMenuIndex => throw _privateConstructorUsedError;

  /// 서브메뉴의 아이템을 선택했을 때 id
  String? get selectedSubItemId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlideMenuStateCopyWith<SlideMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlideMenuStateCopyWith<$Res> {
  factory $SlideMenuStateCopyWith(
          SlideMenuState value, $Res Function(SlideMenuState) then) =
      _$SlideMenuStateCopyWithImpl<$Res, SlideMenuState>;
  @useResult
  $Res call(
      {List<SlideMenuData> menuData,
      bool onSubMenu,
      bool visible,
      int? onSubMenuIndex,
      String? selectedSubItemId});
}

/// @nodoc
class _$SlideMenuStateCopyWithImpl<$Res, $Val extends SlideMenuState>
    implements $SlideMenuStateCopyWith<$Res> {
  _$SlideMenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuData = null,
    Object? onSubMenu = null,
    Object? visible = null,
    Object? onSubMenuIndex = freezed,
    Object? selectedSubItemId = freezed,
  }) {
    return _then(_value.copyWith(
      menuData: null == menuData
          ? _value.menuData
          : menuData // ignore: cast_nullable_to_non_nullable
              as List<SlideMenuData>,
      onSubMenu: null == onSubMenu
          ? _value.onSubMenu
          : onSubMenu // ignore: cast_nullable_to_non_nullable
              as bool,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      onSubMenuIndex: freezed == onSubMenuIndex
          ? _value.onSubMenuIndex
          : onSubMenuIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedSubItemId: freezed == selectedSubItemId
          ? _value.selectedSubItemId
          : selectedSubItemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SlideMenuStateCopyWith<$Res>
    implements $SlideMenuStateCopyWith<$Res> {
  factory _$$_SlideMenuStateCopyWith(
          _$_SlideMenuState value, $Res Function(_$_SlideMenuState) then) =
      __$$_SlideMenuStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SlideMenuData> menuData,
      bool onSubMenu,
      bool visible,
      int? onSubMenuIndex,
      String? selectedSubItemId});
}

/// @nodoc
class __$$_SlideMenuStateCopyWithImpl<$Res>
    extends _$SlideMenuStateCopyWithImpl<$Res, _$_SlideMenuState>
    implements _$$_SlideMenuStateCopyWith<$Res> {
  __$$_SlideMenuStateCopyWithImpl(
      _$_SlideMenuState _value, $Res Function(_$_SlideMenuState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuData = null,
    Object? onSubMenu = null,
    Object? visible = null,
    Object? onSubMenuIndex = freezed,
    Object? selectedSubItemId = freezed,
  }) {
    return _then(_$_SlideMenuState(
      menuData: null == menuData
          ? _value._menuData
          : menuData // ignore: cast_nullable_to_non_nullable
              as List<SlideMenuData>,
      onSubMenu: null == onSubMenu
          ? _value.onSubMenu
          : onSubMenu // ignore: cast_nullable_to_non_nullable
              as bool,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      onSubMenuIndex: freezed == onSubMenuIndex
          ? _value.onSubMenuIndex
          : onSubMenuIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedSubItemId: freezed == selectedSubItemId
          ? _value.selectedSubItemId
          : selectedSubItemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SlideMenuState extends _SlideMenuState {
  _$_SlideMenuState(
      {final List<SlideMenuData> menuData = const [],
      this.onSubMenu = false,
      this.visible = true,
      this.onSubMenuIndex,
      this.selectedSubItemId})
      : _menuData = menuData,
        super._();

  /// 현재 메뉴데이터
  final List<SlideMenuData> _menuData;

  /// 현재 메뉴데이터
  @override
  @JsonKey()
  List<SlideMenuData> get menuData {
    if (_menuData is EqualUnmodifiableListView) return _menuData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuData);
  }

  /// 서브메뉴가 있는 경우
  /// 네비게이션 네일 메뉴 클릭 > 서브메뉴가 있는 경우 true
  @override
  @JsonKey()
  final bool onSubMenu;

  /// 서브메뉴 open 또는 close, true: 안 보임
  @override
  @JsonKey()
  final bool visible;

  /// 네비게이션 네일 메뉴 클릭 > 네일 인덱스
  @override
  final int? onSubMenuIndex;

  /// 서브메뉴의 아이템을 선택했을 때 id
  @override
  final String? selectedSubItemId;

  @override
  String toString() {
    return 'SlideMenuState(menuData: $menuData, onSubMenu: $onSubMenu, visible: $visible, onSubMenuIndex: $onSubMenuIndex, selectedSubItemId: $selectedSubItemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SlideMenuState &&
            const DeepCollectionEquality().equals(other._menuData, _menuData) &&
            (identical(other.onSubMenu, onSubMenu) ||
                other.onSubMenu == onSubMenu) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.onSubMenuIndex, onSubMenuIndex) ||
                other.onSubMenuIndex == onSubMenuIndex) &&
            (identical(other.selectedSubItemId, selectedSubItemId) ||
                other.selectedSubItemId == selectedSubItemId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_menuData),
      onSubMenu,
      visible,
      onSubMenuIndex,
      selectedSubItemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SlideMenuStateCopyWith<_$_SlideMenuState> get copyWith =>
      __$$_SlideMenuStateCopyWithImpl<_$_SlideMenuState>(this, _$identity);
}

abstract class _SlideMenuState extends SlideMenuState {
  factory _SlideMenuState(
      {final List<SlideMenuData> menuData,
      final bool onSubMenu,
      final bool visible,
      final int? onSubMenuIndex,
      final String? selectedSubItemId}) = _$_SlideMenuState;
  _SlideMenuState._() : super._();

  @override

  /// 현재 메뉴데이터
  List<SlideMenuData> get menuData;
  @override

  /// 서브메뉴가 있는 경우
  /// 네비게이션 네일 메뉴 클릭 > 서브메뉴가 있는 경우 true
  bool get onSubMenu;
  @override

  /// 서브메뉴 open 또는 close, true: 안 보임
  bool get visible;
  @override

  /// 네비게이션 네일 메뉴 클릭 > 네일 인덱스
  int? get onSubMenuIndex;
  @override

  /// 서브메뉴의 아이템을 선택했을 때 id
  String? get selectedSubItemId;
  @override
  @JsonKey(ignore: true)
  _$$_SlideMenuStateCopyWith<_$_SlideMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
