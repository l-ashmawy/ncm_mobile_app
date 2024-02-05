import 'package:authentication/presentation/login/login_bloc.dart';
import 'package:authentication/presentation/login/login_page.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';

class AuthenticationModule extends Module {
  @override
  final List<Bind> binds = [
    /// BLOCS
    Bind.factory((i) => LoginBloc()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(NavigatorKeys.AUTH_KEY, child: (_, args) => const LoginPage()),
  ];
}
