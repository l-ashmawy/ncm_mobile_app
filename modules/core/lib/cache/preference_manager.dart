import 'package:dependencies/dependencies.dart';

import 'caching_keys.dart';

class PreferenceManager {
  void saveValue(String cachingKey, String value) =>
      GetStorage().write(cachingKey, value);

  String getValue(String cachingKey) => GetStorage().read(cachingKey) as String;

  void saveStationDetailsData(String data) =>
      GetStorage().write(CachingKey.STATION_DETAILS_DATA, data);

  String stationDetailsData() =>
      GetStorage().read(CachingKey.STATION_DETAILS_DATA) as String? ?? "";
}
