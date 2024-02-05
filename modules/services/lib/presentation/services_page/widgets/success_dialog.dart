import 'dart:convert';

import 'package:art_core/art_core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:services/data/station_details_model.dart';

void showSuccessDialog(StationDetailsModel stationDetailsData) {
  showDialog(
      context: Modular.routerDelegate.navigatorKey.currentContext!,
      builder: (context) => Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: AppText(
                    text: 'Station details submitted successfully',
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                    fontSize: 20,
                    maxLines: 2,
                  ),
                ),
                AppText(
                  text:
                      "-Type Of Weather : ${stationDetailsData.typeOfWeather}",
                  color: AppColors.primaryColor,
                  maxLines: 3,
                ),
                AppText(
                  text:
                      "-Station Classification : ${stationDetailsData.stationClassification}",
                  color: AppColors.primaryColor,
                  maxLines: 3,
                ),
                AppText(
                  text: "-Station Class : ${stationDetailsData.stationClass}",
                  color: AppColors.primaryColor,
                  maxLines: 3,
                ),
                AppText(
                  text:
                      "-Proposed Station Location : ${stationDetailsData.proposedStationLocation}",
                  color: AppColors.primaryColor,
                  maxLines: 3,
                ),
                AppText(
                  text: "-Station Type : ${stationDetailsData.stationType}",
                  color: AppColors.primaryColor,
                  maxLines: 3,
                ),
                AppText(
                  text:
                      "-Station Address : ${stationDetailsData.stationAddress}",
                  color: AppColors.primaryColor,
                  maxLines: 3,
                ),
                AppText(
                  text: "-Delegate Name : ${stationDetailsData.delegateName}",
                  color: AppColors.primaryColor,
                  maxLines: 3,
                ),
                AppText(
                  text: "-ID Number : ${stationDetailsData.idNumber}",
                  color: AppColors.primaryColor,
                  maxLines: 3,
                ),
                AppText(
                  text:
                      "-Authorization Reference Number : ${stationDetailsData.authorizationReferenceNumber}",
                  color: AppColors.primaryColor,
                  maxLines: 3,
                ),
                AppText(
                  text:
                      "-Signature File Path : ${stationDetailsData.signatureFilePath}",
                  color: AppColors.primaryColor,
                  maxLines: 3,
                ),
                AppText(
                  text:
                      "-Document File Path : ${stationDetailsData.documentFilePath}",
                  color: AppColors.primaryColor,
                  maxLines: 3,
                ),
                AppText(
                  text:
                      "-Lat: ${jsonDecode(stationDetailsData.position)['latitude']}, Long ${jsonDecode(stationDetailsData.position)['longitude']}",
                  color: AppColors.primaryColor,
                  maxLines: 3,
                ),
                AppText(
                  text: "-Deed Type : ${stationDetailsData.deedType}",
                  color: AppColors.primaryColor,
                  maxLines: 3,
                ),
              ],
            ).marginAll(20),
          ));
}
