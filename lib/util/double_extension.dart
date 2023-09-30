import 'dart:ui';

import 'package:flutter_forwards/util/color.dart';

extension DoubleExtension on double {
  Color toDegreeColor() {
    String hex;
    if (this < 0.2) {
      hex = "CF7B60";
    } else if (this < 0.4) {
      hex = "CFA960";
    } else if (this < 0.6) {
      hex = "B9CF60";
    } else if (this < 0.8) {
      hex = "8ACF60";
    } else {
      hex = "32C864";
    }
    return ColorUtil.colorFromHex(hex);
  }
}