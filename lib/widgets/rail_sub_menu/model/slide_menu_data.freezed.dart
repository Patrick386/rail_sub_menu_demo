// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slide_menu_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SlideMenuData {
  ItemMenuData? get header => throw _privateConstructorUsedError;
  List<ItemMenuData> get itemMenu => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlideMenuDataCopyWith<SlideMenuData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlideMenuDataCopyWith<$Res> {
  factory $SlideMenuDataCopyWith(
          SlideMenuData value, $Res Function(SlideMenuData) then) =
      _$SlideMenuDataCopyWithImpl<$Res, SlideMenuData>;
  @useResult
  $Res call({ItemMenuData? header, List<ItemMenuData> itemMenu, bool selected});

  $ItemMenuDataCopyWith<$Res>? get header;
}

/// @nodoc
class _$SlideMenuDataCopyWithImpl<$Res, $Val extends SlideMenuData>
    implements $SlideMenuDataCopyWith<$Res> {
  _$SlideMenuDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? itemMenu = null,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as ItemMenuData?,
      itemMenu: null == itemMenu
          ? _value.itemMenu
          : itemMenu // ignore: cast_nullable_to_non_nullable
              as List<ItemMenuData>,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemMenuDataCopyWith<$Res>? get header {
    if (_value.header == null) {
      return null;
    }

    return $ItemMenuDataCopyWith<$Res>(_value.header!, (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SlideMenuDataCopyWith<$Res>
    implements $SlideMenuDataCopyWith<$Res> {
  factory _$$_SlideMenuDataCopyWith(
          _$_SlideMenuData value, $Res Function(_$_SlideMenuData) then) =
      __$$_SlideMenuDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ItemMenuData? header, List<ItemMenuData> itemMenu, bool selected});

  @override
  $ItemMenuDataCopyWith<$Res>? get header;
}

/// @nodoc
class __$$_SlideMenuDataCopyWithImpl<$Res>
    extends _$SlideMenuDataCopyWithImpl<$Res, _$_SlideMenuData>
    implements _$$_SlideMenuDataCopyWith<$Res> {
  __$$_SlideMenuDataCopyWithImpl(
      _$_SlideMenuData _value, $Res Function(_$_SlideMenuData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? itemMenu = null,
    Object? selected = null,
  }) {
    return _then(_$_SlideMenuData(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as ItemMenuData?,
      itemMenu: null == itemMenu
          ? _value._itemMenu
          : itemMenu // ignore: cast_nullable_to_non_nullable
              as List<ItemMenuData>,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SlideMenuData extends _SlideMenuData {
  _$_SlideMenuData(
      {this.header,
      final List<ItemMenuData> itemMenu = const [],
      this.selected = false})
      : _itemMenu = itemMenu,
        super._();

  @override
  final ItemMenuData? header;
  final List<ItemMenuData> _itemMenu;
  @override
  @JsonKey()
  List<ItemMenuData> get itemMenu {
    if (_itemMenu is EqualUnmodifiableListView) return _itemMenu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemMenu);
  }

  @override
  @JsonKey()
  final bool selected;

  @override
  String toString() {
    return 'SlideMenuData(header: $header, itemMenu: $itemMenu, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SlideMenuData &&
            (identical(other.header, header) || other.header == header) &&
            const DeepCollectionEquality().equals(other._itemMenu, _itemMenu) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, header,
      const DeepCollectionEquality().hash(_itemMenu), selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SlideMenuDataCopyWith<_$_SlideMenuData> get copyWith =>
      __$$_SlideMenuDataCopyWithImpl<_$_SlideMenuData>(this, _$identity);
}

abstract class _SlideMenuData extends SlideMenuData {
  factory _SlideMenuData(
      {final ItemMenuData? header,
      final List<ItemMenuData> itemMenu,
      final bool selected}) = _$_SlideMenuData;
  _SlideMenuData._() : super._();

  @override
  ItemMenuData? get header;
  @override
  List<ItemMenuData> get itemMenu;
  @override
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$$_SlideMenuDataCopyWith<_$_SlideMenuData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemMenuData {
  String get id => throw _privateConstructorUsedError; // 6자리 짧은 ID
  String get title => throw _privateConstructorUsedError; //
  String? get routerName => throw _privateConstructorUsedError; // 라우터 이름
  bool get selected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemMenuDataCopyWith<ItemMenuData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemMenuDataCopyWith<$Res> {
  factory $ItemMenuDataCopyWith(
          ItemMenuData value, $Res Function(ItemMenuData) then) =
      _$ItemMenuDataCopyWithImpl<$Res, ItemMenuData>;
  @useResult
  $Res call({String id, String title, String? routerName, bool selected});
}

/// @nodoc
class _$ItemMenuDataCopyWithImpl<$Res, $Val extends ItemMenuData>
    implements $ItemMenuDataCopyWith<$Res> {
  _$ItemMenuDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? routerName = freezed,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      routerName: freezed == routerName
          ? _value.routerName
          : routerName // ignore: cast_nullable_to_non_nullable
              as String?,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemMenuDataCopyWith<$Res>
    implements $ItemMenuDataCopyWith<$Res> {
  factory _$$_ItemMenuDataCopyWith(
          _$_ItemMenuData value, $Res Function(_$_ItemMenuData) then) =
      __$$_ItemMenuDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String? routerName, bool selected});
}

/// @nodoc
class __$$_ItemMenuDataCopyWithImpl<$Res>
    extends _$ItemMenuDataCopyWithImpl<$Res, _$_ItemMenuData>
    implements _$$_ItemMenuDataCopyWith<$Res> {
  __$$_ItemMenuDataCopyWithImpl(
      _$_ItemMenuData _value, $Res Function(_$_ItemMenuData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? routerName = freezed,
    Object? selected = null,
  }) {
    return _then(_$_ItemMenuData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      routerName: freezed == routerName
          ? _value.routerName
          : routerName // ignore: cast_nullable_to_non_nullable
              as String?,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ItemMenuData extends _ItemMenuData {
  _$_ItemMenuData(
      {this.id = '', this.title = '', this.routerName, this.selected = false})
      : super._();

  @override
  @JsonKey()
  final String id;
// 6자리 짧은 ID
  @override
  @JsonKey()
  final String title;
//
  @override
  final String? routerName;
// 라우터 이름
  @override
  @JsonKey()
  final bool selected;

  @override
  String toString() {
    return 'ItemMenuData(id: $id, title: $title, routerName: $routerName, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemMenuData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.routerName, routerName) ||
                other.routerName == routerName) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, routerName, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemMenuDataCopyWith<_$_ItemMenuData> get copyWith =>
      __$$_ItemMenuDataCopyWithImpl<_$_ItemMenuData>(this, _$identity);
}

abstract class _ItemMenuData extends ItemMenuData {
  factory _ItemMenuData(
      {final String id,
      final String title,
      final String? routerName,
      final bool selected}) = _$_ItemMenuData;
  _ItemMenuData._() : super._();

  @override
  String get id;
  @override // 6자리 짧은 ID
  String get title;
  @override //
  String? get routerName;
  @override // 라우터 이름
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$$_ItemMenuDataCopyWith<_$_ItemMenuData> get copyWith =>
      throw _privateConstructorUsedError;
}
