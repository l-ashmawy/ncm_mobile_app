import 'package:art_core/art_core.dart';

class CheckBoxItem extends StatelessWidget {
  final String title;
  final bool value;
  final VoidCallback onTap;
  const CheckBoxItem(
      {super.key,
      required this.title,
      required this.value,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          if (value)
            Image.asset(AssetsManager.checkBoxChecked)
          else
            Image.asset(AssetsManager.checkBox),
          AppText(text: title, fontSize: 16, fontWeight: FontWeight.w500)
              .marginOnly(left: 16),
        ],
      ).marginOnly(bottom: 16),
    );
  }
}
