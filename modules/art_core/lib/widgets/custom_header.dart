import 'package:art_core/art_core.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AssetsManager.small_logo, height: 90, width: 90),
        Spacer(),
        Image.asset(AssetsManager.search, width: 35, height: 35)
            .marginSymmetric(horizontal: 16),
        Image.asset(AssetsManager.notification, width: 35, height: 35),
      ],
    );
  }
}
