// This file defines helper methods by using extension on specific dart/flutter classes eg:

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension StringExtensions on String {
  String get png => "assets/images/$this.png";
  String get svg => "assets/images/$this.svg";
  String get capitalize =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : this;
  String get allInCaps => toUpperCase();
  String get capitalizeFirstofEach =>
      split(' ').map((str) => str.capitalize).join(' ');
}
