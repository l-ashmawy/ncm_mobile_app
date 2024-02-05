import 'package:art_core/art_core.dart';
import 'package:core/cache/preference_manager.dart';
import 'package:dependencies/dependencies.dart';
import 'package:services/presentation/reports_page/widgets/report_item.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final preferenceManager = Modular.get<PreferenceManager>();
    final reportsList = preferenceManager.stationDetailsData();

    return Scaffold(
      body: ScaffoldBody(
          body: ListView(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 64, bottom: 120),
        children: [
          // Back Button
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: const Icon(
                CupertinoIcons.back,
                color: AppColors.white,
              ),
              iconSize: 30,
              onPressed: () {
                Modular.to.pop();
              },
            ),
          ),

          Container(
            decoration: CustomDecorationContainer.decoration(),
            padding: const EdgeInsets.all(16),
            child: ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    ReportIem(reportItem: reportsList[index]),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: reportsList.length),
          ),
        ],
      )),
    );
  }
}
