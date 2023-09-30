import 'dart:ui';

class ColorUtil {
  static Color colorFromHex(String hexColor) {
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}