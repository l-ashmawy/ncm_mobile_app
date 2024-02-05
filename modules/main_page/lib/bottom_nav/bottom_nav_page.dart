import 'package:art_core/art_core.dart';
import 'package:dashboard/presentation/dashboard_page.dart';
import 'package:dependencies/dependencies.dart';
import 'package:services/presentation/services_page/services_page.dart';

import 'bottom_nav_bloc.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  final bottomNavBloc = Modular.get<BottomNavBloc>();

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = <Widget>[
      const DashboardPage(),
      const ServicesPage(),
    ];

    return BlocBuilder<BottomNavBloc, BottomNavState>(
      bloc: bottomNavBloc,
      builder: (context, state) {
        return PopScope(
          onPopInvoked: (value) async {
            if (bottomNavBloc.index.value != 0) {
              bottomNavBloc.add(ChangeIndexEvent(0));
              return Future.value(false);
            } else {
              final bool exit = await showDialog(
                    context: context,
                    builder: (BuildContext context) => CupertinoAlertDialog(
                      title: const AppText(text: 'Close App'),
                      content: const AppText(
                          text: 'Are you sure you want to close app ?',
                          maxLines: 3,
                          textAlign: TextAlign.center),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          isDefaultAction: true,
                          child: const Text('Cancel'),
                          onPressed: () =>
                              Modular.to.pop(false), // Close the dialog only
                        ),
                        CupertinoDialogAction(
                          child: const Text("Yes"),
                          onPressed: () => Modular.to
                              .pop(true), // Close the dialog and the app
                        ),
                      ],
                    ),
                  ) ??
                  false; // If the dialog is dismissed, we'll assume the user wants to cancel the operation (won't exit)

              return Future.value(exit);
            }
          },
          child: MediaQuery(
            data: MediaQuery.of(context).removePadding(removeBottom: true),
            child: Stack(
              children: [
                pages[bottomNavBloc.index.value],
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    child: BottomNavigationBar(
                      type: BottomNavigationBarType.fixed,
                      currentIndex: bottomNavBloc.index.value,
                      backgroundColor: AppColors.white,
                      onTap: (index) =>
                          bottomNavBloc.add(ChangeIndexEvent(index)),
                      items: [
                        BottomNavigationBarItem(
                          label: '',
                          activeIcon: Image.asset(
                            'assets/images/dashboard.png',
                            height: 60,
                            width: 60,
                          ),
                          icon: Image.asset(
                            'assets/images/dashboard.png',
                            color: AppColors.inActiveIconColor,
                            height: 60,
                            width: 60,
                          ),
                        ),
                        BottomNavigationBarItem(
                          label: '',
                          activeIcon: Image.asset(
                            'assets/images/service.png',
                            height: 50,
                            width: 50,
                          ),
                          icon: Image.asset(
                            'assets/images/service.png',
                            color: AppColors.inActiveIconColor,
                            height: 50,
                            width: 50,
                          ),
                        ),
                        BottomNavigationBarItem(
                          label: '',
                          activeIcon: Image.asset(
                            'assets/images/settings.png',
                            height: 50,
                            width: 50,
                          ),
                          icon: Image.asset(
                            'assets/images/settings.png',
                            color: AppColors.inActiveIconColor,
                            height: 50,
                            width: 50,
                          ),
                        ),
                        BottomNavigationBarItem(
                          label: '',
                          activeIcon: Image.asset(
                            'assets/images/more.png',
                            height: 60,
                            width: 60,
                          ),
                          icon: Image.asset(
                            'assets/images/more.png',
                            color: AppColors.inActiveIconColor,
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
