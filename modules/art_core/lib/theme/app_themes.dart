import 'package:art_core/art_core.dart';
import 'package:dependencies/dependencies.dart';

class AppThemes {
  static ThemeData light = ThemeData(
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: false,
        backgroundColor: AppColors.white,
      ),
      highlightColor: Colors.transparent,
      inputDecorationTheme: TextFieldThemes.light,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      indicatorColor: AppColors.secondaryColor,
      textSelectionTheme: const TextSelectionThemeData(),
      cupertinoOverrideTheme:
          const CupertinoThemeData(primaryColor: AppColors.secondaryColor),
      primaryColor: AppColors.secondaryColor,
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: AppColors.white),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ));
}
