part of 'theme.dart';

abstract class FontTheme {
  // Main Font
  static TextStyle mainFont = const TextStyle(color: Colors.black);

  // =========== TEXT STYLE REGULER ===========

  static TextStyle heading5 = mainFont.copyWith(fontSize: 16);
  static TextStyle heading6 = mainFont.copyWith(fontSize: 15);

  static TextStyle body1 = mainFont.copyWith(fontSize: 14);
  static TextStyle body2 = mainFont.copyWith(fontSize: 13);
  static TextStyle subtitle1 = mainFont.copyWith(fontSize: 12);
  static TextStyle subtitle2 = mainFont.copyWith(fontSize: 11);
  static TextStyle button = mainFont.copyWith(fontSize: 14);
  static TextStyle caption = mainFont.copyWith(fontSize: 11);
  static TextStyle overline = mainFont.copyWith(fontSize: 8);

  // =========== TEXT STYLE BOLD ===========

  static TextStyle heading5Bold = heading5.copyWith(fontWeight: FontWeight.bold);
  static TextStyle heading6Bold = heading6.copyWith(fontWeight: FontWeight.bold);
  static TextStyle subtitle1Bold = subtitle1.copyWith(fontWeight: FontWeight.bold);
  static TextStyle subtitle2Bold = subtitle2.copyWith(fontWeight: FontWeight.bold);
  static TextStyle body1Bold = body1.copyWith(fontWeight: FontWeight.bold);
  static TextStyle body2Bold = body2.copyWith(fontWeight: FontWeight.bold);
  static TextStyle buttonBold = button.copyWith(fontWeight: FontWeight.bold);
  static TextStyle captionBold = caption.copyWith(fontWeight: FontWeight.bold);
  static TextStyle overlineBold = overline.copyWith(fontWeight: FontWeight.bold);
}
