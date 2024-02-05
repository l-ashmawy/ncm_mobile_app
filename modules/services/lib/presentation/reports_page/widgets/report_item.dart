import 'dart:convert';

import 'package:art_core/art_core.dart';

import '../../../data/station_details_model.dart';

class ReportIem extends StatelessWidget {
  final String reportItem;

  const ReportIem({super.key, required this.reportItem});

  @override
  Widget build(BuildContext context) {
    StationDetailsModel item =
        StationDetailsModel.fromJson(jsonDecode(reportItem));

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      AppText(
        text: "-Type Of Weather : ${item.typeOfWeather}",
        color: AppColors.primaryColor,
        maxLines: 3,
      ),
      AppText(
        text: "-Station Classification : ${item.stationClassification}",
        color: AppColors.primaryColor,
        maxLines: 3,
      ),
      AppText(
        text: "-Station Class : ${item.stationClass}",
        color: AppColors.primaryColor,
        maxLines: 3,
      ),
      AppText(
        text: "-Proposed Station Location : ${item.proposedStationLocation}",
        color: AppColors.primaryColor,
        maxLines: 3,
      ),
      AppText(
        text: "-Station Type : ${item.stationType}",
        color: AppColors.primaryColor,
        maxLines: 3,
      ),
      AppText(
        text: "-Station Address : ${item.stationAddress}",
        color: AppColors.primaryColor,
        maxLines: 3,
      ),
      AppText(
        text: "-Delegate Name : ${item.delegateName}",
        color: AppColors.primaryColor,
        maxLines: 3,
      ),
      AppText(
        text: "-ID Number : ${item.idNumber}",
        color: AppColors.primaryColor,
        maxLines: 3,
      ),
      AppText(
        text:
            "-Authorization Reference Number : ${item.authorizationReferenceNumber}",
        color: AppColors.primaryColor,
        maxLines: 3,
      ),
      AppText(
        text: "-Signature File Path : ${item.signatureFilePath}",
        color: AppColors.primaryColor,
        maxLines: 3,
      ),
      AppText(
        text: "-Document File Path : ${item.documentFilePath}",
        color: AppColors.primaryColor,
        maxLines: 3,
      ),
      AppText(
        text:
            "-Lat: ${jsonDecode(item.position)['latitude']}, Long ${jsonDecode(item.position)['longitude']}",
        color: AppColors.primaryColor,
        maxLines: 3,
      ),
      AppText(
        text: "-Deed Type : ${item.deedType}",
        color: AppColors.primaryColor,
        maxLines: 3,
      ),
    ]);
  }
}
