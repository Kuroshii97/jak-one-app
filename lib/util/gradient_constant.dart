import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jak_one_app_replacement/util/color_constant.dart';

class GradientConstant {
  static Shader jakOneLinearGradient = LinearGradient(
    colors: <Color>[ColorConstant.jakOneDarkOrange, ColorConstant.jakOneLighterOrange],
  ).createShader(const Rect.fromLTWH(0, 50, 0, 5));

  static Shader jakOneReversedLinearGradient = LinearGradient(
    colors: <Color>[ColorConstant.jakOneLightestOrange, ColorConstant.jakOneDarkOrange],
  ).createShader(const Rect.fromLTWH(0, 50, 0, 5));
}