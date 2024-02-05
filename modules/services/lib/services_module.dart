import 'package:core/router/navigator_keys.dart';
import 'package:dependencies/dependencies.dart';
import 'package:services/presentation/reports_page/reports_page.dart';
import 'package:services/presentation/services_page/services_bloc.dart';

class ServicesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => ServicesBloc(), export: true),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(NavigatorKeys.REPORTS_PAGE,
        child: (_, args) => const ReportsPage()),
  ];
}
