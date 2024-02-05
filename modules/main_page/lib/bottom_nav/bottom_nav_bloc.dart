import 'package:dependencies/dependencies.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  final BehaviorSubject<int> index = BehaviorSubject<int>.seeded(0);

  BottomNavBloc() : super(const ChangeIndex(0)) {
    on<ChangeIndexEvent>(_changeIndex);
  }

  void _changeIndex(
      ChangeIndexEvent event, Emitter<BottomNavState> emit) async {
    if (event.index == 2 || event.index == 3) return;
    index.value = event.index;
    emit(ChangeIndex(index.value));
    emit(IndexChanged());
  }
}
