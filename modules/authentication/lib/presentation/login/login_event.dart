part of 'login_bloc.dart';

abstract class LoginEvent {}

class InitEvent extends LoginEvent {}

class UpdateUserName extends LoginEvent {
  final String userName;

  UpdateUserName(this.userName);
}

class UpdatePassword extends LoginEvent {
  final String password;

  UpdatePassword(this.password);
}

class OnSubmitLogin extends LoginEvent {}
