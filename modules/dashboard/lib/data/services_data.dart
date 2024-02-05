import 'package:art_core/art_core.dart';

class ServiceItemModel {
  final String image;
  final String title;

  const ServiceItemModel({required this.image, required this.title});
}

List<ServiceItemModel> services = const [
  ServiceItemModel(image: AssetsManager.climate, title: 'Climate data request'),
  ServiceItemModel(
      image: AssetsManager.report, title: 'Request a weather report'),
  ServiceItemModel(
      image: AssetsManager.forecast, title: 'Free forecast report request'),
];
