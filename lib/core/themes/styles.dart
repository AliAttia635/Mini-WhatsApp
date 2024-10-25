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
    fontSize: 10,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle textStyle16 =
      TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500);

  static const TextStyle textStyle14 =
      TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500);

  static const TextStyle textStyle22 =
      TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600);

  static const TextStyle textStyle20 =
      TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600);

  static const TextStyle textStyle18 =
      TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600);
}
