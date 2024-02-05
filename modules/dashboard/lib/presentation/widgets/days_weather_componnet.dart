import 'dart:math';

import 'package:art_core/art_core.dart';

class DaysWeatherComponent extends StatelessWidget {
  const DaysWeatherComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> weekdays = [
      "MON",
      "TUE",
      "WED",
      "THU",
      "FRI",
      "SAT",
      "SUN"
    ];
    final List<String> images = [
      AssetsManager.weatherIcon1,
      AssetsManager.weatherIcon2,
      AssetsManager.weatherIcon3,
      AssetsManager.weatherIcon4,
      AssetsManager.weatherIcon5,
      AssetsManager.weatherIcon6,
    ];

    String getWeekday(int daysFromNow) {
      final date = DateTime.now().add(Duration(days: daysFromNow));
      return weekdays[date.weekday % 7];
    }

    return SizedBox(
      height: 60,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(images[Random().nextInt(images.length)],
                    height: 20, width: 20),
                AppText(
                  text: getWeekday(index),
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(width: 32);
          }),
    );
  }
}
