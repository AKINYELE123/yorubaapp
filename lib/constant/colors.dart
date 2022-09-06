// import 'package:flutter/material.dart';
//
// // const brown = const Color("0xFFB2522");
//
// class HexColor extends Color{
//   static int _getColorFromHex(String hexColor) {
//     hexColor = hexColor.toUpperCase().replaceAll("#", "");
//     if (hexColor.length == 6){
//       hexColor = "FF" + hexColor;
//     }
//     return int.parse(hexColor, radix: 16);
//   }
//   HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
// }
//
// Color splashBackground = HexColor("#E5E5E5");
// Color purple = HexColor("#7237C5");

import 'package:flutter/material.dart';

// const brown = const Color("0xFFB2522");

class HexColor extends Color{
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6){
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

Color purple = HexColor("#7237C5");
Color grey = HexColor("#000000");
Color background1 = HexColor("#D5C3EE");
Color background2 = HexColor("#F1DC1B");
Color background3 = HexColor("#1CC4AB");
Color background4 = HexColor("#2D85DE");
 Color white = HexColor("#FFFFFF");
 Color blue = HexColor("#66ABD6");

