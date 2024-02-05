import 'package:dependencies/dependencies.dart';
import 'package:services/presentation/services_bloc.dart';

class ServicesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => ServicesBloc(), export: true),
  ];
}
