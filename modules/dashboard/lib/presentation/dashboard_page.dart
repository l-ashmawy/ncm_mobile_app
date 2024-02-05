import 'package:art_core/art_core.dart';
import 'package:dashboard/presentation/widgets/service_item.dart';
import 'package:dashboard/presentation/widgets/status_component.dart';
import 'package:dashboard/presentation/widgets/weather_component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:main_page/bottom_nav/bottom_nav_bloc.dart';

import '../data/services_data.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBody(
          body: ListView(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 64, bottom: 120),
        children: [
          const CustomHeader(),
          const HeaderText(
            firstText: 'Hi,',
            secondText: "Welcome User",
          ),
          const WeatherComponent(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatusComponent(
                number: 53,
                image: AssetsManager.status1,
                title: "Service Applied",
              ),
              SizedBox(width: 16),
              StatusComponent(
                number: 33,
                image: AssetsManager.status2,
                title: "Service Approved",
              ),
              SizedBox(width: 16),
              StatusComponent(
                number: 20,
                image: AssetsManager.status3,
                title: "Service Rejected",
              ),
            ],
          ),
          SectionTitle(
            title: "Services",
            hasViewAll: true,
            onViewAll: () {},
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: services.length,
            padding: const EdgeInsets.only(top: 8),
            itemBuilder: (context, index) {
              return ServiceItem(
                onTap: () =>
                    Modular.get<BottomNavBloc>().add(ChangeIndexEvent(1)),
                image: services[index].image,
                title: services[index].title,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 16);
            },
          ),
        ],
      )),
    );
  }
}
