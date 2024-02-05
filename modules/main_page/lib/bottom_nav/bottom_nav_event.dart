part of 'bottom_nav_bloc.dart';

abstract class BottomNavEvent {}

class ChangeIndexEvent extends BottomNavEvent {
  final int index;

  ChangeIndexEvent(this.index);
}
