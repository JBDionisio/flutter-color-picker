import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'color.freezed.dart';

@freezed
abstract class Color with _$Color {
  const factory Color({
    double red,
    double green,
    double blue,
  }) = _Color;
}
