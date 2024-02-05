import 'package:art_core/art_core.dart';

class StatusComponent extends StatelessWidget {
  final int number;

  final String image;
  final String title;

  const StatusComponent(
      {super.key,
      required this.number,
      required this.image,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: context.screenHeight * 0.17,
        padding: const EdgeInsets.only(bottom: 8),
        decoration: CustomDecorationContainer.decoration(image: image),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(
              text: number.toString(),
              fontSize: 50,
              height: 2,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              width: context.screenWidth * 0.24,
              child: AppText(
                text: title,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ).marginSymmetric(vertical: 16),
    );
  }
}
