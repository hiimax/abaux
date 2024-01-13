import '../import/import.dart';

class Abauxhelper {
  Abauxhelper._();

  ///Light Theme
  static ThemeData lightTheme() {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: abauxBackgroundColor,
      // backgroundColor:abauxBackgroundColor,
      brightness: Brightness.light,
      primaryColor: abauxPrimaryColor,
      hintColor: abauxWhite,
      canvasColor: Colors.white,
      cardColor: Colors.white,
      dividerColor: Colors.grey,
      focusColor: abauxPrimaryColor,
      hoverColor: Colors.grey[200],
      // errorColor: Colors.red,
      fontFamily: StringConstants.abauxFontFamily,
      appBarTheme: const AppBarTheme(
        color: abauxWhite,
      ),
      iconTheme: const IconThemeData(
        color: abauxBlack,
        size: 24.0,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }

  ///Dark Theme
  static ThemeData darkTheme() {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: abauxBackgroundColor,
      // backgroundColor:abauxBackgroundColor,
      brightness: Brightness.dark,
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: abauxBackgroundColor,
      ),
      fontFamily: StringConstants.abauxFontFamily,
      primaryColor: Colors.blue,
      hintColor: Colors.orange,
      canvasColor: Colors.black,
      cardColor: Colors.black,
      dividerColor: Colors.grey,
      focusColor: Colors.blue,
      hoverColor: Colors.grey[200],
      // errorColor: Colors.red,
      appBarTheme: const AppBarTheme(
        color: abauxBackgroundColor,
      ),
      iconTheme: const IconThemeData(
        color: abauxWhite,
        size: 24.0,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}
