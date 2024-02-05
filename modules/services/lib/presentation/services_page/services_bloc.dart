import 'dart:convert';

import 'package:art_core/art_core.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:services/data/station_details_model.dart';
import 'package:services/presentation/services_page/widgets/success_dialog.dart';

part 'services_event.dart';
part 'services_state.dart';

class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  BehaviorSubject<String> typeOfWeather =
      BehaviorSubject<String>.seeded('Weather station under construction');

  BehaviorSubject<String> deedType =
      BehaviorSubject<String>.seeded('Ownership');

  String stationClassification = '';
  BehaviorSubject<String> errorStationClassification =
      BehaviorSubject<String>();

  String stationClass = '';
  BehaviorSubject<String> errorStationClass = BehaviorSubject<String>();

  String proposedStationLocation = '';
  BehaviorSubject<String> errorProposedStationLocation =
      BehaviorSubject<String>();

  BehaviorSubject<Position> position = BehaviorSubject<Position>();

  BehaviorSubject<String> errorCoordinates = BehaviorSubject<String>();

  String stationType = '';
  BehaviorSubject<String> errorStationType = BehaviorSubject<String>();

  String stationAddress = '';
  BehaviorSubject<String> errorStationAddress = BehaviorSubject<String>();

  String delegateName = '';
  BehaviorSubject<String> errorDelegateName = BehaviorSubject<String>();

  String idNumber = '';
  BehaviorSubject<String> errorIDNumber = BehaviorSubject<String>();

  String authorizationReferenceNumber = '';
  BehaviorSubject<String> errorAuthorizationReferenceNumber =
      BehaviorSubject<String>();

  String signatureFilePath = '';
  BehaviorSubject<String> errorSignatureFilePath = BehaviorSubject<String>();

  String documentFilePath = '';
  BehaviorSubject<String> errorDocumentFilePath = BehaviorSubject<String>();

  TextEditingController stationTypeController = TextEditingController();
  TextEditingController digitalSignatureController = TextEditingController();
  TextEditingController documentController = TextEditingController();

  final GeolocatorPlatform _geoLocatorPlatform = GeolocatorPlatform.instance;

  final _preferenceManager = Modular.get<PreferenceManager>();

  ServicesBloc() : super(ServicesInitial()) {
    on<ChangeTypeOfWeather>(_changeTypeOfWeather);
    on<UpdateStationClassification>(_updateStationClassification);
    on<UpdateStationClass>(_updateStationClass);
    on<UpdateProposedStationLocation>(_updateProposedStationLocation);
    on<UpdateStationCoordinates>(_updateStationCoordinates);
    on<ChangeDeedType>(_changeDeedType);
    on<UpdateStationType>(_updateStationType);
    on<UpdateStationAddress>(_updateStationAddress);
    on<UpdateDelegateName>(_updateDelegateName);
    on<UpdateIDNumber>(_updateIDNumber);
    on<UpdateAuthorizationReferenceNumber>(_updateAuthorizationReferenceNumber);
    on<UpdateSignatureFilePath>(_updateSignatureFilePath);
    on<UpdateDocumentFilePath>(_updateDocumentFilePath);
    on<OnSubmitStationDetails>(_onSubmitStationDetails);
  }

  void _changeTypeOfWeather(
      ChangeTypeOfWeather event, Emitter<ServicesState> emit) async {
    typeOfWeather.value = event.type;
  }

  void _updateStationClassification(
      UpdateStationClassification event, Emitter<ServicesState> emit) async {
    errorStationClassification.value = '';
    stationClassification = event.stationClassification;
  }

  void _updateStationClass(
      UpdateStationClass event, Emitter<ServicesState> emit) async {
    errorStationClass.value = '';
    stationClass = event.stationClass;
  }

  void _updateProposedStationLocation(
      UpdateProposedStationLocation event, Emitter<ServicesState> emit) async {
    errorProposedStationLocation.value = '';
    proposedStationLocation = event.proposedStationLocation;
  }

  void _updateStationCoordinates(
      UpdateStationCoordinates event, Emitter<ServicesState> emit) async {
    showLoadingDialog();
    final hasPermission = await _handlePermission();
    if (!hasPermission) {
      return;
    }
    final position = await _geoLocatorPlatform.getCurrentPosition();
    errorCoordinates.value = '';
    this.position.value = position;
    Modular.to.pop();
  }

  Future<bool> _handlePermission() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await _geoLocatorPlatform.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }
    permission = await _geoLocatorPlatform.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await _geoLocatorPlatform.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }
    return true;
  }

  void _changeDeedType(
      ChangeDeedType event, Emitter<ServicesState> emit) async {
    deedType.value = event.type;
  }

  void _updateStationType(
      UpdateStationType event, Emitter<ServicesState> emit) async {
    stationTypeController.text = event.stationType;
    errorStationType.value = '';
    stationType = event.stationType;
    Modular.to.pop();
  }

  void _updateStationAddress(
      UpdateStationAddress event, Emitter<ServicesState> emit) async {
    errorStationAddress.value = '';
    stationAddress = event.stationAddress;
  }

  void _updateDelegateName(
      UpdateDelegateName event, Emitter<ServicesState> emit) async {
    errorDelegateName.value = '';
    delegateName = event.name;
  }

  void _updateIDNumber(
      UpdateIDNumber event, Emitter<ServicesState> emit) async {
    errorIDNumber.value = '';
    idNumber = event.number;
  }

  void _updateAuthorizationReferenceNumber(
      UpdateAuthorizationReferenceNumber event,
      Emitter<ServicesState> emit) async {
    errorAuthorizationReferenceNumber.value = '';
    authorizationReferenceNumber = event.referenceNumber;
  }

  void _updateSignatureFilePath(
      UpdateSignatureFilePath event, Emitter<ServicesState> emit) async {
    errorSignatureFilePath.value = '';
    signatureFilePath = event.path;
    digitalSignatureController.text = signatureFilePath.split('/').last;
    Modular.to.pop();
  }

  void _updateDocumentFilePath(
      UpdateDocumentFilePath event, Emitter<ServicesState> emit) async {
    errorDocumentFilePath.value = '';
    documentFilePath = event.path;
    documentController.text = documentFilePath.split('/').last;
    Modular.to.pop();
  }

  void _onSubmitStationDetails(
      OnSubmitStationDetails event, Emitter<ServicesState> emit) async {
    if (validate(emit)) {
      final stationDetails = StationDetailsModel(
        typeOfWeather: typeOfWeather.value,
        stationClassification: stationClassification,
        stationClass: stationClass,
        proposedStationLocation: proposedStationLocation,
        stationType: stationType,
        stationAddress: stationAddress,
        delegateName: delegateName,
        idNumber: idNumber,
        authorizationReferenceNumber: authorizationReferenceNumber,
        signatureFilePath: signatureFilePath,
        documentFilePath: documentFilePath,
        position: jsonEncode(position.value.toJson()),
        deedType: deedType.value,
      );
      final requestsList = _preferenceManager.stationDetailsData();
      print(requestsList.length);
      requestsList.add(jsonEncode(stationDetails.toJson()).toString());
      _preferenceManager.saveStationDetailsData(requestsList);
      showLoadingDialog();
      Future.delayed(const Duration(seconds: 1), () {
        Modular.to.pop();
        StationDetailsModel stationDetailsData = StationDetailsModel.fromJson(
            jsonDecode(_preferenceManager.stationDetailsData().last));
        showSuccessDialog(stationDetailsData);
      });
    }
  }

  bool validate(Emitter<ServicesState> emit) {
    bool isValid = true;

    // validate station classification
    if (stationClassification.isEmpty) {
      errorStationClassification.value = 'Station classification is required';
      isValid = false;
    }
    if (stationClassification.isNotEmpty && stationClassification.length < 5) {
      errorStationClassification.value =
          'Station classification must be at least 5 characters';
      isValid = false;
    }

    // validate station class
    if (stationClass.isEmpty) {
      errorStationClass.value = 'Station class is required';
      isValid = false;
    }
    if (stationClass.isNotEmpty && stationClass.length < 5) {
      errorStationClass.value = 'Station class must be at least 5 characters';
      isValid = false;
    }

    // validate proposed station location
    if (proposedStationLocation.isEmpty) {
      errorProposedStationLocation.value =
          'Proposed station location is required';
      isValid = false;
    }
    if (proposedStationLocation.isNotEmpty &&
        proposedStationLocation.length < 5) {
      errorProposedStationLocation.value =
          'Proposed station location must be at least 5 characters';
      isValid = false;
    }

    // validate station coordinates
    if (!position.hasValue) {
      errorCoordinates.value = 'Station coordinates are required';
      isValid = false;
    }

    // validate station type
    if (stationType.isEmpty) {
      errorStationType.value = 'Station type is required';
      isValid = false;
    }
    if (stationType.isNotEmpty && stationType.length < 5) {
      errorStationType.value = 'Station type must be at least 5 characters';
      isValid = false;
    }

    // validate station address
    if (stationAddress.isEmpty) {
      errorStationAddress.value = 'Station address is required';
      isValid = false;
    }
    if (stationAddress.isNotEmpty && stationAddress.length < 5) {
      errorStationAddress.value =
          'Station address must be at least 5 characters';
      isValid = false;
    }

    // validate delegate name
    if (delegateName.isEmpty) {
      errorDelegateName.value = 'Delegate name is required';
      isValid = false;
    }
    if (delegateName.isNotEmpty && delegateName.length < 5) {
      errorDelegateName.value = 'Delegate name must be at least 5 characters';
      isValid = false;
    }

    // validate ID number
    if (idNumber.isEmpty) {
      errorIDNumber.value = 'ID number is required';
      isValid = false;
    }
    if (idNumber.isNotEmpty && idNumber.length < 10) {
      errorIDNumber.value = 'ID number must be at least 10 characters';
      isValid = false;
    }

    // validate authorization reference number
    if (authorizationReferenceNumber.isEmpty) {
      errorAuthorizationReferenceNumber.value =
          'Authorization reference number is required';
      isValid = false;
    }
    if (authorizationReferenceNumber.isNotEmpty &&
        authorizationReferenceNumber.length < 5) {
      errorAuthorizationReferenceNumber.value =
          'Authorization reference number must be at least 5 characters';
    }

    // validate signature file path
    if (signatureFilePath.isEmpty) {
      errorSignatureFilePath.value = 'Signature file path is required';
      isValid = false;
    }

    // validate document file path
    if (documentFilePath.isEmpty) {
      errorDocumentFilePath.value = 'Document file path is required';
      isValid = false;
    }
    return isValid;
  }
}
