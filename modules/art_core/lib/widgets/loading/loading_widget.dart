import 'package:dependencies/dependencies.dart';

import '../../art_core.dart';

class AppLoading extends StatelessWidget {
  final Color? color;

  const AppLoading({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoActivityIndicator(
      color: color ?? AppColors.primaryColor,
      radius: 20,
    );
  }
}
