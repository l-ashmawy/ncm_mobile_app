import 'package:art_core/art_core.dart';

class ServiceItem extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;

  const ServiceItem(
      {super.key,
      required this.image,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: CustomDecorationContainer.decoration(),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
                width: 100,
                height: 100,
                decoration: CustomDecorationContainer.decoration(opacity: 0.7),
                child: Image.asset(image)),
            Expanded(
              child: AppText(
                text: title,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                maxLines: 2,
              ).marginOnly(left: 16, right: 80),
            )
          ],
        ),
      ),
    );
  }
}
