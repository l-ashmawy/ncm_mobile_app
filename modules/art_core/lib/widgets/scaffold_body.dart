import 'package:art_core/art_core.dart';

class ScaffoldBody extends StatelessWidget {
  final Widget body;

  const ScaffoldBody({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsManager.bgImage), fit: BoxFit.fill),
      ),
      child: body,
    );
  }
}
