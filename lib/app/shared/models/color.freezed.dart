// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ColorTearOff {
  const _$ColorTearOff();

// ignore: unused_element
  _Color call({double red, double green, double blue}) {
    return _Color(
      red: red,
      green: green,
      blue: blue,
    );
  }
}

// ignore: unused_element
const $Color = _$ColorTearOff();

mixin _$Color {
  double get red;
  double get green;
  double get blue;

  $ColorCopyWith<Color> get copyWith;
}

abstract class $ColorCopyWith<$Res> {
  factory $ColorCopyWith(Color value, $Res Function(Color) then) =
      _$ColorCopyWithImpl<$Res>;
  $Res call({double red, double green, double blue});
}

class _$ColorCopyWithImpl<$Res> implements $ColorCopyWith<$Res> {
  _$ColorCopyWithImpl(this._value, this._then);

  final Color _value;
  // ignore: unused_field
  final $Res Function(Color) _then;

  @override
  $Res call({
    Object red = freezed,
    Object green = freezed,
    Object blue = freezed,
  }) {
    return _then(_value.copyWith(
      red: red == freezed ? _value.red : red as double,
      green: green == freezed ? _value.green : green as double,
      blue: blue == freezed ? _value.blue : blue as double,
    ));
  }
}

abstract class _$ColorCopyWith<$Res> implements $ColorCopyWith<$Res> {
  factory _$ColorCopyWith(_Color value, $Res Function(_Color) then) =
      __$ColorCopyWithImpl<$Res>;
  @override
  $Res call({double red, double green, double blue});
}

class __$ColorCopyWithImpl<$Res> extends _$ColorCopyWithImpl<$Res>
    implements _$ColorCopyWith<$Res> {
  __$ColorCopyWithImpl(_Color _value, $Res Function(_Color) _then)
      : super(_value, (v) => _then(v as _Color));

  @override
  _Color get _value => super._value as _Color;

  @override
  $Res call({
    Object red = freezed,
    Object green = freezed,
    Object blue = freezed,
  }) {
    return _then(_Color(
      red: red == freezed ? _value.red : red as double,
      green: green == freezed ? _value.green : green as double,
      blue: blue == freezed ? _value.blue : blue as double,
    ));
  }
}

class _$_Color with DiagnosticableTreeMixin implements _Color {
  const _$_Color({this.red, this.green, this.blue});

  @override
  final double red;
  @override
  final double green;
  @override
  final double blue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Color(red: $red, green: $green, blue: $blue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Color'))
      ..add(DiagnosticsProperty('red', red))
      ..add(DiagnosticsProperty('green', green))
      ..add(DiagnosticsProperty('blue', blue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Color &&
            (identical(other.red, red) ||
                const DeepCollectionEquality().equals(other.red, red)) &&
            (identical(other.green, green) ||
                const DeepCollectionEquality().equals(other.green, green)) &&
            (identical(other.blue, blue) ||
                const DeepCollectionEquality().equals(other.blue, blue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(red) ^
      const DeepCollectionEquality().hash(green) ^
      const DeepCollectionEquality().hash(blue);

  @override
  _$ColorCopyWith<_Color> get copyWith =>
      __$ColorCopyWithImpl<_Color>(this, _$identity);
}

abstract class _Color implements Color {
  const factory _Color({double red, double green, double blue}) = _$_Color;

  @override
  double get red;
  @override
  double get green;
  @override
  double get blue;
  @override
  _$ColorCopyWith<_Color> get copyWith;
}
