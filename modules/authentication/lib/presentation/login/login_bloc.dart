import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  BehaviorSubject<String> errorUserName = BehaviorSubject<String>();
  BehaviorSubject<String> errorPassword = BehaviorSubject<String>();

  String userName = '';
  String password = "";

  final preferenceManager = Modular.get<PreferenceManager>();

  LoginBloc() : super(InitState()) {
    on<UpdateUserName>(_updateUserName);
    on<UpdatePassword>(_updatePass);
    on<OnSubmitLogin>(_submitLogin);
  }

  void _updateUserName(UpdateUserName event, Emitter<LoginState> emit) async {
    errorUserName.value = '';
    userName = event.userName;
  }

  void _updatePass(UpdatePassword event, Emitter<LoginState> emit) async {
    errorPassword.value = '';
    password = event.password;
  }

  void _submitLogin(OnSubmitLogin event, Emitter<LoginState> emit) async {
    if (validate(emit)) {
      Modular.to
          .navigate(NavigatorKeys.MAIN_PAGE_KEY + NavigatorKeys.MAIN_PAGE);
    }
  }

  bool validate(Emitter<LoginState> emit) {
    bool isValid = true;
    if (userName.isEmpty) {
      errorUserName.value = "Please enter username";
      isValid = false;
    }
    if (userName.isNotEmpty && userName.length < 5) {
      errorUserName.value = "Please enter valid username at least 5 characters";
      isValid = false;
    }

    if (password.isEmpty) {
      errorPassword.value = "please enter password";
      isValid = false;
    }
    if (password.isNotEmpty && password.length < 5) {
      errorPassword.value = "please enter valid password at least 5 characters";
      isValid = false;
    }
    return isValid;
  }
}
