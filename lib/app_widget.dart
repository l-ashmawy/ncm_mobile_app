import 'package:art_core/art_core.dart';
import 'package:dependencies/dependencies.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
    Modular.to.addListener(() async {
      try {
        Modular.to.path.split('/').lastWhere((element) => element != '');
      } catch (e) {
        log(e.toString());
      }
    });
  }

  T tripleResolverCallback<T extends Object>() {
    return Modular.get<T>();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'NCM',
      theme: AppThemes.light,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
