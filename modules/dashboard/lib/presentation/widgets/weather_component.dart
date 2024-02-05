import 'package:art_core/art_core.dart';
import 'package:dependencies/dependencies.dart';

import 'days_weather_componnet.dart';

class WeatherComponent extends StatelessWidget {
  const WeatherComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomDecorationContainer.decoration(),
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppText(
            text: DateFormat('EEEE, MMMM dd').format(DateTime.now()),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          const AppText(
            text: "Riyadh, Saudi Arabia",
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          Image.asset(AssetsManager.weatherIcon).marginSymmetric(vertical: 8),
          const AppText(
            text: "Partly Cloud",
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
          const AppText(
            text: "27°",
            fontSize: 64,
            height: 1.2,
            fontWeight: FontWeight.normal,
          ),
          const DaysWeatherComponent()
        ],
      ),
    ).marginOnly(top: 16, bottom: 8);
  }
}
