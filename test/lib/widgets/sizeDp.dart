import 'package:flutter/material.dart';

class SizeDp {
  static double dpToPixels(double dp, BuildContext context) {
    return dp * MediaQuery.of(context).devicePixelRatio;
  }
}
