import '../../art_core.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final bool hasViewAll;
  final VoidCallback? onViewAll;
  final double? fontSize;
  final FontWeight? fontWeight;
  const SectionTitle(
      {super.key,
      required this.title,
      this.hasViewAll = false,
      this.onViewAll,
      this.fontSize,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppText(
            text: title,
            fontSize: fontSize ?? 20,
            fontWeight: fontWeight ?? FontWeight.bold),
        if (hasViewAll)
          InkWell(
            onTap: onViewAll,
            child: AppText(
              text: "View All",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.white,
            ),
          )
      ],
    );
  }
}
