import 'package:flutter/material.dart';
import 'package:nss_wmo/foundations/config/constants.dart';

extension TextStyleExt on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);

  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get comfort => copyWith(height: 1.8);

  TextStyle get dense => copyWith(height: 1.2);

  TextStyle get black => copyWith(color: Colors.black);

  TextStyle get grey => copyWith(color: ColorConst.grey);

  TextStyle get white => copyWith(color: Colors.white);
}
