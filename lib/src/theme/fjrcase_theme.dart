import 'package:flutter/material.dart';

final class FjrCaseTheme {
  ///COLORS
  static const Color black1 = Color(0xFF000000);
  static const Color black2 = Color(0xFF1D1D1D);
  static const Color black3 = Color(0xFF282828);

  static const Color greyColor = Color(0xFF777E90);
  static const Color lightGreyColor = Color(0xFFF4F5F6);
  static const Color subGreyColor = Color(0xFF777E90);

  static const Color buttonLabel = Color(0xFF495057);
  static const Color textColor = Color(0xFF23262F);
  static const Color buttonColor = Color(0xFF3B71FE);

  static const Color success = Color(0xFF27AE60);
  static const Color warning = Color(0xFFE2B93B);
  static const Color info = Color(0xFF2F80ED);
  static const Color error = Color(0xFFEB5757);

  static const Color violet1 = Color(0xFFF3D9FA);
  static const Color violet2 = Color(0xFF7950F2);
  static const Color violet3 = Color.fromRGBO(206, 147, 216, 100);
  static const Color violet4 = Color(0xFF9C36B5);
  static const Color violet5 = Color.fromRGBO(74, 20, 140, 100);
  static const Color violet6 = Color(0xFF3D1576);

  static const Color pink1 = Colors.pinkAccent;

  static const Color lightThmeBackground = Color(0xFFFFFFFF);

  static const Color darkThemeBackground = Color(0xFF141416);
  static const Color darkThemeWhite = Color(0xFF23262F);

  ///BORDER
  static final _defaultLightInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: const BorderSide(
      width: 1,
      color: Color(0xFFE6E8EC),
    ),
  );

  ///THEMES
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: violet1),
    useMaterial3: true,
    fontFamily: 'gilroy',
    scaffoldBackgroundColor: lightThmeBackground,
    inputDecorationTheme: InputDecorationTheme(
      disabledBorder: _defaultLightInputBorder,
      enabledBorder: _defaultLightInputBorder.copyWith(
        borderSide: const BorderSide(
          width: 2,
        ),
      ),
      focusedBorder: _defaultLightInputBorder.copyWith(
        borderSide: const BorderSide(
          color: black2,
        ),
      ),
      border: _defaultLightInputBorder.copyWith(
        borderSide: const BorderSide(
          color: Color(0xFFE6E8EC),
        ),
      ),
      errorBorder: _defaultLightInputBorder.copyWith(
        borderSide: const BorderSide(
          color: error,
        ),
      ),
      labelStyle: const TextStyle(
        color: textColor,
        fontFamily: 'gilroyBold',
        letterSpacing: 0.15,
      ),
      floatingLabelStyle: const TextStyle(
        color: violet5,
        fontFamily: 'gilroyBold',
        letterSpacing: 0.15,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: violet6),
    useMaterial3: true,
  );

  ///TEXTSTYLES
  static const titleStyle = TextStyle(
    fontFamily: 'gilroybold',
    color: textColor,
    height: 0.9,
    letterSpacing: 2,
  );

  static const subTitleStyle = TextStyle(
    fontFamily: 'gilroymed',
    color: textColor,
  );

  static const lightTextStyle =
      TextStyle(color: subGreyColor, fontSize: 14, fontFamily: 'gilroysemi');
}
