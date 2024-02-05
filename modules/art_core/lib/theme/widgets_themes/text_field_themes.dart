import '../themes.dart';

class TextFieldThemes {
  static const double _radius = 4;
  static const double _width1_5 = 1;

  static InputDecorationTheme light = InputDecorationTheme(
    // enabled border style
    enabledBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(color: AppColors.secondaryColor, width: _width1_5),
        borderRadius: BorderRadius.all(Radius.circular(_radius))),

    // focused border style
    focusedBorder: const OutlineInputBorder(
        borderSide:
            BorderSide(color: AppColors.secondaryColor, width: _width1_5),
        borderRadius: BorderRadius.all(Radius.circular(_radius))),

    // error border style
    errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: _width1_5),
        borderRadius: BorderRadius.all(Radius.circular(_radius))),

    // focused Error border style
    focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: _width1_5),
        borderRadius: BorderRadius.all(Radius.circular(_radius))),
    labelStyle: TextStyle(color: AppColors.secondaryColor.withOpacity(0.8)),
    hintStyle: TextStyle(color: AppColors.secondaryColor.withOpacity(0.8)),
    contentPadding: const EdgeInsets.all(8),
    filled: true,
    fillColor: AppColors.textFieldFilledColor,
  );
}
