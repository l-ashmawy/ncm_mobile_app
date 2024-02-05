import 'package:art_core/art_core.dart';
import 'package:dependencies/dependencies.dart';

import 'login_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loginBloc = Modular.get<LoginBloc>();
    return Scaffold(
        body: BlocBuilder<LoginBloc, LoginState>(
      bloc: loginBloc,
      builder: (context, state) {
        return ScaffoldBody(
          body: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              width: context.screenWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(AssetsManager.logoW),
                  const AppText(
                    text: 'Login',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: AppColors.secondaryColor,
                  ).marginSymmetric(vertical: 16),
                  StreamBuilder(
                    stream: loginBloc.errorUserName,
                    builder: (context, snapshot) {
                      return AppTextField(
                          label: "Username",
                          enableBorder: false,
                          hint: "Sample username",
                          errorText: snapshot.data,
                          onChanged: (value) =>
                              loginBloc.add(UpdateUserName(value)));
                    },
                  ),
                  StreamBuilder(
                    stream: loginBloc.errorPassword,
                    builder: (context, snapshot) {
                      return AppTextField(
                          label: "Password",
                          enableBorder: false,
                          isPassword: true,
                          hint: "***********",
                          errorText: snapshot.data,
                          onChanged: (value) =>
                              loginBloc.add(UpdatePassword(value)));
                    },
                  ).marginSymmetric(vertical: 24),
                  AppButton(
                    title: "Login",
                    onTap: () => loginBloc.add(OnSubmitLogin()),
                  ),
                  const AppText(
                    text: "Forgot Password ?",
                    fontWeight: FontWeight.normal,
                    color: AppColors.secondaryColor,
                  ).marginSymmetric(vertical: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AppText(
                        text: "Not a member? ",
                        fontWeight: FontWeight.normal,
                        color: AppColors.secondaryColor,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const AppText(
                          text: "Register",
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ).marginSymmetric(horizontal: 16),
          ),
        );
      },
    ));
  }
}
