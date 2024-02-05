class StationDetailsModel {
  final String typeOfWeather;
  final String stationClassification;
  final String stationClass;
  final String proposedStationLocation;
  final String stationType;
  final String stationAddress;
  final String delegateName;
  final String idNumber;
  final String authorizationReferenceNumber;
  final String signatureFilePath;
  final String documentFilePath;
  final String position;
  final String deedType;

  StationDetailsModel({
    required this.typeOfWeather,
    required this.stationClassification,
    required this.stationClass,
    required this.proposedStationLocation,
    required this.stationType,
    required this.stationAddress,
    required this.delegateName,
    required this.idNumber,
    required this.authorizationReferenceNumber,
    required this.signatureFilePath,
    required this.documentFilePath,
    required this.position,
    required this.deedType,
  });

  Map<String, dynamic> toJson() {
    return {
      'typeOfWeather': typeOfWeather,
      'stationClassification': stationClassification,
      'stationClass': stationClass,
      'proposedStationLocation': proposedStationLocation,
      'stationType': stationType,
      'stationAddress': stationAddress,
      'delegateName': delegateName,
      'idNumber': idNumber,
      'authorizationReferenceNumber': authorizationReferenceNumber,
      'signatureFilePath': signatureFilePath,
      'documentFilePath': documentFilePath,
      'position': position,
      'deedType': deedType,
    };
  }

  factory StationDetailsModel.fromJson(Map<String, dynamic> json) {
    return StationDetailsModel(
      typeOfWeather: json['typeOfWeather'],
      stationClassification: json['stationClassification'],
      stationClass: json['stationClass'],
      proposedStationLocation: json['proposedStationLocation'],
      stationType: json['stationType'],
      stationAddress: json['stationAddress'],
      delegateName: json['delegateName'],
      idNumber: json['idNumber'],
      authorizationReferenceNumber: json['authorizationReferenceNumber'],
      signatureFilePath: json['signatureFilePath'],
      documentFilePath: json['documentFilePath'],
      position: json['position'],
      deedType: json['deedType'],
    );
  }
}
