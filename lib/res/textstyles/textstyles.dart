import 'package:abaux/res/import/import.dart';

class AbauxTextStyle {
  static TextStyle heading = TextStyle(
      fontSize: (30).sp,
      color: abauxTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.abauxFontFamily);

  static TextStyle subHeading = TextStyle(
      fontSize: (24).sp,
      color: abauxTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.abauxFontFamily);
  static TextStyle medium = TextStyle(
      fontSize: (20).sp,
      color: abauxTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.abauxFontFamily);
  static TextStyle subMedium = TextStyle(
      fontSize: (18).sp,
      color: abauxTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.abauxFontFamily);
  static TextStyle normal = TextStyle(
      fontSize: (16).sp,
      color: abauxTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.abauxFontFamily);
  static TextStyle subNormal = TextStyle(
      fontSize: (14).sp,
      color: abauxTextColor,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.abauxFontFamily);
  static TextStyle small = TextStyle(
      fontSize: (12.sp),
      // color: CbColors.cAccentLighten3,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.abauxFontFamily);
  static TextStyle subSmall = TextStyle(
      fontSize: (10.sp),
      // color: CbColors.cAccentLighten3,
      fontStyle: FontStyle.normal,
      fontFamily: StringConstants.abauxFontFamily);
  static TextStyle errorSubText = TextStyle(
      color: kDebugMode ? Colors.red : Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 21.sp);
}
