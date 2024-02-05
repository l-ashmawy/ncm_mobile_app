import '../art_core.dart';

class CustomDecorationContainer {
  static const Color _defaultColor =
      AppColors.white; // Assuming a default color
  static const double _defaultRadius = 16.0;

  static Decoration decoration({
    BorderRadiusGeometry borderRadius =
        const BorderRadius.all(Radius.circular(_defaultRadius)),
    Color color = _defaultColor,
    bool isCircle = false,
    String? image,
    bool hasShadows = true,
    BoxBorder? border,
    double? opacity,
  }) {
    return BoxDecoration(
      image: image != null
          ? DecorationImage(image: AssetImage(image), fit: BoxFit.cover)
          : null,
      shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
      border: border,
      color: color.withOpacity(opacity ?? 0.2),
      borderRadius: isCircle ? null : borderRadius,
    );
  }
}
