import 'package:art_core/art_core.dart';

class HeaderText extends StatelessWidget {
  final String firstText;
  final String secondText;

  const HeaderText(
      {super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: firstText,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          AppText(
            text: secondText,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
    ).marginSymmetric(horizontal: 8);
  }
}
