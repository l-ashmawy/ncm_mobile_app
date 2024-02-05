import 'package:core/core.dart';
import 'package:dashboard/dashboard_module.dart';
import 'package:dependencies/dependencies.dart';
import 'package:services/services_module.dart';

import 'bottom_nav/bottom_nav_bloc.dart';
import 'bottom_nav/bottom_nav_page.dart';

class MainPageModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => BottomNavBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(NavigatorKeys.MAIN_PAGE,
        child: (_, args) => const BottomNavPage()),
  ];

  @override
  List<Module> get imports {
    return [
      DashboardModule(),
      ServicesModule(),
    ];
  }
}
