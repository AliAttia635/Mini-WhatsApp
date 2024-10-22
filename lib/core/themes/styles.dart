import 'package:flutter/material.dart';
import 'package:mentor_academy_live_task/core/themes/color_app.dart';

abstract class Styles {
  static TextStyle textStyle24 = const TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle10 = const TextStyle(
    color: ColorApp.primaryColor,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle textStyle16 =
      TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500);
}
