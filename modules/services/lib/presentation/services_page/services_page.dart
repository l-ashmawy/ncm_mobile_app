import 'package:art_core/art_core.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:services/presentation/services_page/services_bloc.dart';
import 'package:services/presentation/services_page/widgets/check_box_item.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Modular.get<ServicesBloc>();
    return Scaffold(
      body: ScaffoldBody(
          body: ListView(
        padding:
            const EdgeInsets.only(right: 16, left: 16, top: 64, bottom: 120),
        children: [
          // Header Section
          const CustomHeader(),
          // Header Text
          const HeaderText(
            firstText: 'Apply',
            secondText: "Climate Data Request",
          ),
          // Service Component
          Container(
            decoration: CustomDecorationContainer.decoration(),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Expandable Panel for Station Details
                ExpandablePanel(
                  header: const AppText(
                    text: "Station Details",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  theme: ExpandableThemeData(
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    hasIcon: true,
                    tapBodyToExpand: true,
                    tapBodyToCollapse: true,
                    expandIcon: Image.asset(AssetsManager.activeExpandableIcon),
                    collapseIcon:
                        Image.asset(AssetsManager.inActiveExpandableIcon),
                    iconPadding: EdgeInsets.zero,
                    iconColor: AppColors.primaryColor,
                  ),
                  controller: ExpandableController(initialExpanded: true),
                  collapsed: const SizedBox(),
                  expanded: StreamBuilder(
                      stream: bloc.typeOfWeather,
                      builder: (context, typeOfWeatherSnapshot) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Type of Weather Station
                            CheckBoxItem(
                              title: "Weather station under construction",
                              value: typeOfWeatherSnapshot.data ==
                                  "Weather station under construction",
                              onTap: () => bloc.add(ChangeTypeOfWeather(
                                  "Weather station under construction")),
                            ),
                            CheckBoxItem(
                              title: "List of weather stations",
                              value: typeOfWeatherSnapshot.data ==
                                  "List of weather stations",
                              onTap: () => bloc.add(ChangeTypeOfWeather(
                                  "List of weather stations")),
                            ),
                            // Station Classification Text Field
                            StreamBuilder(
                                stream: bloc.errorStationClassification,
                                builder: (context, snapshot) {
                                  return AppTextField(
                                    hint: "Station classification",
                                    fillColor:
                                        AppColors.internalFilledFieldColor,
                                    enableBorder: false,
                                    hintColor: AppColors.white,
                                    errorText: snapshot.data,
                                    onChanged: (value) => bloc.add(
                                        UpdateStationClassification(value)),
                                  );
                                }),
                            // Station Class Text Field
                            StreamBuilder(
                                stream: bloc.errorStationClass,
                                builder: (context, snapshot) {
                                  return AppTextField(
                                    hint: "Station class",
                                    fillColor:
                                        AppColors.internalFilledFieldColor,
                                    enableBorder: false,
                                    hintColor: AppColors.white,
                                    errorText: snapshot.data,
                                    onChanged: (value) =>
                                        bloc.add(UpdateStationClass(value)),
                                  ).marginSymmetric(vertical: 16);
                                }),

                            // Proposed Station Location Text Field
                            StreamBuilder(
                                stream: bloc.errorProposedStationLocation,
                                builder: (context, snapshot) {
                                  return AppTextField(
                                    hint: "Proposed station location",
                                    fillColor:
                                        AppColors.internalFilledFieldColor,
                                    enableBorder: false,
                                    hintColor: AppColors.white,
                                    errorText: snapshot.data,
                                    onChanged: (value) => bloc.add(
                                        UpdateProposedStationLocation(value)),
                                  );
                                }),

                            // Station Coordinates Text Field
                            StreamBuilder(
                                stream: bloc.errorCoordinates,
                                builder: (context, snapshot) {
                                  return StreamBuilder(
                                      stream: bloc.position,
                                      builder: (context, positionSnapshot) {
                                        return AppTextField(
                                          hint: !positionSnapshot.hasData
                                              ? "Station coordinates"
                                              : "Lat: ${positionSnapshot.data!.latitude}, Long: ${positionSnapshot.data!.longitude}",
                                          fillColor: AppColors
                                              .internalFilledFieldColor,
                                          enableBorder: false,
                                          hintColor: AppColors.white,
                                          readOnly: true,
                                          suffixIcon:
                                              Image.asset(AssetsManager.marker),
                                          errorText: snapshot.data,
                                          onTap: () => bloc
                                              .add(UpdateStationCoordinates()),
                                        ).marginSymmetric(vertical: 16);
                                      });
                                }),
                            // Deed Type Section
                            const SectionTitle(
                              title: "Title Deed Type",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            StreamBuilder(
                                stream: bloc.deedType,
                                builder: (context, deedTypeSnapshot) {
                                  return Row(
                                    children: [
                                      CheckBoxItem(
                                        title: "Ownership",
                                        value: deedTypeSnapshot.data ==
                                            "Ownership",
                                        onTap: () => bloc
                                            .add(ChangeDeedType("Ownership")),
                                      ),
                                      const Spacer(),
                                      CheckBoxItem(
                                        title: "Rent",
                                        value: deedTypeSnapshot.data == "Rent",
                                        onTap: () =>
                                            bloc.add(ChangeDeedType("Rent")),
                                      ),
                                      const Spacer(),
                                    ],
                                  ).marginSymmetric(vertical: 16);
                                }),

                            // Station Type Text Field
                            StreamBuilder(
                                stream: bloc.errorStationType,
                                builder: (context, snapshot) {
                                  return AppTextField(
                                    controller: bloc.stationTypeController,
                                    hint: "Station type",
                                    fillColor:
                                        AppColors.internalFilledFieldColor,
                                    suffixIcon: const Icon(
                                        CupertinoIcons.chevron_down,
                                        color: AppColors.white),
                                    enableBorder: false,
                                    readOnly: true,
                                    hintColor: AppColors.white,
                                    errorText: snapshot.data,
                                    onTap: () => showCustomBottomSheet(
                                        context,
                                        ["Type 1", "Type 2", "Type 3"],
                                        (index) => bloc.add(UpdateStationType(
                                            "Type ${index + 1}")),
                                        emptyText: "No data found"),
                                  );
                                }),

                            // Station Address Text Field
                            StreamBuilder(
                                stream: bloc.errorStationAddress,
                                builder: (context, snapshot) {
                                  return AppTextField(
                                    hint: "Station Address",
                                    maxLines: 4,
                                    fillColor:
                                        AppColors.internalFilledFieldColor,
                                    enableBorder: false,
                                    hintColor: AppColors.white,
                                    errorText: snapshot.data,
                                    onChanged: (value) =>
                                        bloc.add(UpdateStationAddress(value)),
                                  ).marginSymmetric(vertical: 16);
                                }),

                            // Delegation Section
                            const SectionTitle(
                              title: "Delegation",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ).marginOnly(bottom: 16),

                            // Delegate Name Text Field
                            StreamBuilder(
                                stream: bloc.errorDelegateName,
                                builder: (context, snapshot) {
                                  return AppTextField(
                                    hint: "Delegate Name",
                                    fillColor:
                                        AppColors.internalFilledFieldColor,
                                    enableBorder: false,
                                    hintColor: AppColors.white,
                                    errorText: snapshot.data,
                                    onChanged: (value) =>
                                        bloc.add(UpdateDelegateName(value)),
                                  );
                                }),

                            // ID Number Text Field
                            StreamBuilder(
                                stream: bloc.errorIDNumber,
                                builder: (context, snapshot) {
                                  return AppTextField(
                                    hint: "ID Number",
                                    textInputType: TextInputType.number,
                                    fillColor:
                                        AppColors.internalFilledFieldColor,
                                    enableBorder: false,
                                    hintColor: AppColors.white,
                                    errorText: snapshot.data,
                                    onChanged: (value) =>
                                        bloc.add(UpdateIDNumber(value)),
                                  ).marginSymmetric(vertical: 16);
                                }),

                            // Authorization Reference Number Text Field
                            StreamBuilder(
                              stream: bloc.errorAuthorizationReferenceNumber,
                              builder: (context, snapshot) {
                                return AppTextField(
                                  hint: "Authorization Reference Number",
                                  fillColor: AppColors.internalFilledFieldColor,
                                  enableBorder: false,
                                  hintColor: AppColors.white,
                                  errorText: snapshot.data,
                                  onChanged: (value) => bloc.add(
                                      UpdateAuthorizationReferenceNumber(
                                          value)),
                                );
                              },
                            ),

                            // Signature Digital Text Field
                            StreamBuilder(
                                stream: bloc.errorSignatureFilePath,
                                builder: (context, snapshot) {
                                  return AppTextField(
                                    controller: bloc.digitalSignatureController,
                                    hint: "Signature Digital",
                                    fillColor:
                                        AppColors.internalFilledFieldColor,
                                    suffixIcon:
                                        Image.asset(AssetsManager.attachment),
                                    enableBorder: false,
                                    readOnly: true,
                                    onTap: () => ImageAndFilePickerHelper()
                                        .showChooseFileBottomSheet((file) =>
                                            bloc.add(
                                                UpdateSignatureFilePath(file))),
                                    hintColor: AppColors.white,
                                    errorText: snapshot.data,
                                  ).marginSymmetric(vertical: 16);
                                }),

                            // Upload Document Text Field
                            StreamBuilder(
                                stream: bloc.errorDocumentFilePath,
                                builder: (context, snapshot) {
                                  return AppTextField(
                                    controller: bloc.documentController,
                                    hint: "Upload Document",
                                    fillColor:
                                        AppColors.internalFilledFieldColor,
                                    suffixIcon:
                                        Image.asset(AssetsManager.attachment),
                                    enableBorder: false,
                                    readOnly: true,
                                    hintColor: AppColors.white,
                                    errorText: snapshot.data,
                                    onTap: () => ImageAndFilePickerHelper()
                                        .showChooseFileBottomSheet((file) =>
                                            bloc.add(
                                                UpdateDocumentFilePath(file))),
                                  );
                                }),
                          ],
                        ).marginSymmetric(vertical: 16);
                      }),
                ),
                const Divider(color: AppColors.internalFilledFieldColor)
                    .marginSymmetric(vertical: 8),
                ExpandablePanel(
                  header: const AppText(
                    text: "Application Details",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  theme: ExpandableThemeData(
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    hasIcon: true,
                    tapBodyToExpand: true,
                    tapBodyToCollapse: true,
                    expandIcon: Image.asset(AssetsManager.activeExpandableIcon),
                    collapseIcon:
                        Image.asset(AssetsManager.inActiveExpandableIcon),
                    iconPadding: EdgeInsets.zero,
                    iconColor: AppColors.primaryColor,
                  ),
                  collapsed: const SizedBox(),
                  expanded: const SizedBox(),
                ),
                const Divider(color: AppColors.internalFilledFieldColor)
                    .marginSymmetric(vertical: 8),
                ExpandablePanel(
                  header: const AppText(
                    text: "National Address",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  theme: ExpandableThemeData(
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    hasIcon: true,
                    tapBodyToExpand: true,
                    tapBodyToCollapse: true,
                    expandIcon: Image.asset(AssetsManager.activeExpandableIcon),
                    collapseIcon:
                        Image.asset(AssetsManager.inActiveExpandableIcon),
                    iconPadding: EdgeInsets.zero,
                    iconColor: AppColors.primaryColor,
                  ),
                  collapsed: const SizedBox(),
                  expanded: const SizedBox(),
                ),
                const Divider(color: AppColors.internalFilledFieldColor)
                    .marginSymmetric(vertical: 8),
                ExpandablePanel(
                  header: const AppText(
                    text: "Contact Details",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  theme: ExpandableThemeData(
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    hasIcon: true,
                    tapBodyToExpand: true,
                    tapBodyToCollapse: true,
                    expandIcon: Image.asset(AssetsManager.activeExpandableIcon),
                    collapseIcon:
                        Image.asset(AssetsManager.inActiveExpandableIcon),
                    iconPadding: EdgeInsets.zero,
                    iconColor: AppColors.primaryColor,
                  ),
                  collapsed: const SizedBox(),
                  expanded: const SizedBox(),
                ),
              ],
            ),
          ).marginOnly(top: 16),
          const Center(
            child: AppText(
              text: "Terms & Conditions",
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ).marginSymmetric(vertical: 32),
          AppButton(
            title: "Submit",
            onTap: () => bloc.add(OnSubmitStationDetails()),
          ),

          if (Modular.get<PreferenceManager>()
              .stationDetailsData()
              .isNotEmpty) ...[
            AppButton(
              title: "Show reporting",
              color: Colors.transparent,
              onTap: () => Modular.to.pushNamed(
                  NavigatorKeys.SERVICES_KEY + NavigatorKeys.REPORTS_PAGE),
            ),
          ]
        ],
      )),
    );
  }
}
