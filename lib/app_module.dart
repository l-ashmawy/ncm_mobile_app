import 'package:authentication/authentication.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:main_page/main_page_module.dart';
import 'package:services/services_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        AuthenticationModule(),
        MainPageModule(),
        ServicesModule(),
      ];

  @override
  final List<Bind> binds = [
    Bind.lazySingleton<PreferenceManager>((i) => PreferenceManager()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(NavigatorKeys.AUTH_KEY, module: AuthenticationModule()),
    ModuleRoute(NavigatorKeys.MAIN_PAGE_KEY, module: MainPageModule()),
    ModuleRoute(NavigatorKeys.SERVICES_KEY, module: ServicesModule()),
  ];
}
