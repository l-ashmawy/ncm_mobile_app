part of 'services_bloc.dart';

@immutable
abstract class ServicesEvent {}

class ChangeTypeOfWeather extends ServicesEvent {
  final String type;

  ChangeTypeOfWeather(this.type);
}

class UpdateStationClassification extends ServicesEvent {
  final String stationClassification;

  UpdateStationClassification(this.stationClassification);
}

class UpdateStationClass extends ServicesEvent {
  final String stationClass;

  UpdateStationClass(this.stationClass);
}

class UpdateProposedStationLocation extends ServicesEvent {
  final String proposedStationLocation;

  UpdateProposedStationLocation(this.proposedStationLocation);
}

class UpdateStationCoordinates extends ServicesEvent {}

class ChangeDeedType extends ServicesEvent {
  final String type;

  ChangeDeedType(this.type);
}

class UpdateStationType extends ServicesEvent {
  final String stationType;

  UpdateStationType(this.stationType);
}

class UpdateStationAddress extends ServicesEvent {
  final String stationAddress;

  UpdateStationAddress(this.stationAddress);
}

class UpdateDelegateName extends ServicesEvent {
  final String name;

  UpdateDelegateName(this.name);
}

class UpdateIDNumber extends ServicesEvent {
  final String number;

  UpdateIDNumber(this.number);
}

class UpdateAuthorizationReferenceNumber extends ServicesEvent {
  final String referenceNumber;

  UpdateAuthorizationReferenceNumber(this.referenceNumber);
}

class UpdateSignatureFilePath extends ServicesEvent {
  final String path;

  UpdateSignatureFilePath(this.path);
}

class UpdateDocumentFilePath extends ServicesEvent {
  final String path;

  UpdateDocumentFilePath(this.path);
}

class OnSubmitStationDetails extends ServicesEvent {}
