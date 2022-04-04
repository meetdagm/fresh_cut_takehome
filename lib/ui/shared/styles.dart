import 'package:flutter/material.dart';

class BaseColors {
  static const Color black = Color(0xff000000);
  static const Color black2 = Color(0xFF28262C);
  static const Color white = Color(0xfffefefe);
  static const Color grey = Color(0xFF8C8797);
  static const Color grey2 = Color(0xFF504C57);
  static const Color grey3 = Color(0xFF3C3941);
  static const Color main = Color(0xFFF2BC3D);
  static const Color purple = Color(0xFFA823EA);
  static const Color red = Color(0xFFC30912);
  static const Color brown = Color(0xFF392904);
}

class BaseFonts {
  static TextStyle title({Color color = Colors.black}) {
    return TextStyle(
      fontFamily: 'AktivGrotesk',
      fontWeight: FontWeight.w700,
      fontSize: 22,
      color: color,
      height: 1.273,
    );
  }

  static TextStyle h1({Color color = BaseColors.white}) {
    return TextStyle(
      fontFamily: 'AktivGrotesk',
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: color,
    );
  }

  static TextStyle h2({Color color = BaseColors.white}) {
    return TextStyle(
      fontFamily: 'AktivGrotesk',
      fontWeight: FontWeight.w400,
      fontSize: 17,
      color: color,
    );
  }

  static TextStyle subTitle({
    Color color = BaseColors.white,
  }) {
    return TextStyle(
      fontFamily: 'AktivGrotesk',
      fontWeight: FontWeight.w400,
      fontSize: 12,
      letterSpacing: .1,
      color: color,
      height: 1.333,
    );
  }
}




// static TextStyle extraLargeTitle({Color color = Colors.black}) {
  //   return TextStyle(
  //     fontFamily: 'AktivGrotesk',
  //     fontWeight: FontWeight.w700,
  //     fontSize: 34,
  //     color: color,
  //   );
  // }


  // static TextStyle title2({Color color = Colors.black}) {
  //   return GoogleFonts.dmSans(color: color, fontWeight: FontWeight.bold, fontSize: 22);
  // }

  // static TextStyle title3({Color color = Colors.black}) {
  //   return GoogleFonts.dmSans(color: color, fontWeight: FontWeight.w600, fontSize: 20, );
  // }

  // static TextStyle headline({Color color = Colors.black, double fontSize: 18}) {
  //   return GoogleFonts.dmSans(color: color, fontWeight: FontWeight.w600, fontSize: fontSize);
  // }

  // static TextStyle headline2({Color color = Colors.black}) {
  //   return GoogleFonts.dmSans(color: color, fontWeight: FontWeight.w500, fontSize: 17);
  // }

  // static TextStyle headline3({Color color = Colors.black}) {
  //   return GoogleFonts.dmSans(color: color, fontWeight: FontWeight.w500, fontSize: 16);
  // }

  // static TextStyle body({Color color = Colors.black, double fontSize: 16}) {
  //   return GoogleFonts.dmSans(color: color, fontWeight: FontWeight.normal, fontSize: fontSize);
  // }

  // static TextStyle footNote({Color color = Colors.black}) {
  //   return GoogleFonts.dmSans(color: color, fontWeight: FontWeight.w500, fontSize: 13);
  // }

  // static TextStyle caption({Color color = Colors.black}) {
  //   return GoogleFonts.dmSans(color: color, fontWeight: FontWeight.w500, fontSize: 11);
  // }