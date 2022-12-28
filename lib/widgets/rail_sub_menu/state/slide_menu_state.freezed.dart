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
  /// Current menu data
  List<SlideMenuData> get menuData => throw _privateConstructorUsedError;

  /// If there is a submenu
  bool get onSubMenu => throw _privateConstructorUsedError;

  /// Rail tap > submenu Index
  int? get onSubMenuIndex => throw _privateConstructorUsedError;

  /// ID when an item in the submenu is selected
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
      this.onSubMenuIndex,
      this.selectedSubItemId})
      : _menuData = menuData,
        super._();

  /// Current menu data
  final List<SlideMenuData> _menuData;

  /// Current menu data
  @override
  @JsonKey()
  List<SlideMenuData> get menuData {
    if (_menuData is EqualUnmodifiableListView) return _menuData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuData);
  }

  /// If there is a submenu
  @override
  @JsonKey()
  final bool onSubMenu;

  /// Rail tap > submenu Index
  @override
  final int? onSubMenuIndex;

  /// ID when an item in the submenu is selected
  @override
  final String? selectedSubItemId;

  @override
  String toString() {
    return 'SlideMenuState(menuData: $menuData, onSubMenu: $onSubMenu, onSubMenuIndex: $onSubMenuIndex, selectedSubItemId: $selectedSubItemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SlideMenuState &&
            const DeepCollectionEquality().equals(other._menuData, _menuData) &&
            (identical(other.onSubMenu, onSubMenu) ||
                other.onSubMenu == onSubMenu) &&
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
      final int? onSubMenuIndex,
      final String? selectedSubItemId}) = _$_SlideMenuState;
  _SlideMenuState._() : super._();

  @override

  /// Current menu data
  List<SlideMenuData> get menuData;
  @override

  /// If there is a submenu
  bool get onSubMenu;
  @override

  /// Rail tap > submenu Index
  int? get onSubMenuIndex;
  @override

  /// ID when an item in the submenu is selected
  String? get selectedSubItemId;
  @override
  @JsonKey(ignore: true)
  _$$_SlideMenuStateCopyWith<_$_SlideMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
