part of 'theme.dart';

abstract class ColorTheme {
  // ---------------- PRIMARY ----------------
  static const Color primaryMainBlue = Color(0xFF3797EF);

  // ---------------- SECONDARY ----------------
  static const Color secondaryOrange = Color(0xFFFBAA47);
  static const Color secondaryRed = Color(0xFFD91A46);
  static const Color secondaryPurple = Color(0xFFA60F93);

  // ---------------- NEUTRAL ----------------
  static const Color neutralWhite = Color(0xFFFFFFFF);
  static const Color neutral50Gray = Color(0xFFFAFAFA);
  static const Color neutral75Gray = Color(0xFF262626);
  static const Color neutralBlack = Color(0xFF000000);

  // ---------------- GRADIENTS ----------------

  static const LinearGradient orangeToPurpleGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [secondaryOrange, secondaryRed, secondaryPurple],
    stops: [0, 0.52, 1],
  );
}
