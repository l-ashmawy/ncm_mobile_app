import 'dart:io';

import 'package:art_core/art_core.dart';
import 'package:dependencies/dependencies.dart';

class ImageAndFilePickerHelper {
  Future<File> openCamera() async {
    final _image = await ImagePicker().pickImage(source: ImageSource.camera);
    File imageFile = File(_image!.path);
    return imageFile;
  }

  Future<File> openGallery() async {
    final _image = await ImagePicker().pickImage(source: ImageSource.gallery);
    File imageFile = File(_image!.path);
    return imageFile;
  }

  Future<File> openFilePicker() async {
    final _file = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        onFileLoading: (FilePickerStatus status) => print(status));
    File file = File(_file?.files.single.path! ?? '');
    return file;
  }

  void showChooseFileBottomSheet(Function onSelectFile) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        context: Modular.routerDelegate.navigatorKey.currentContext!,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppText(
                text: "Select Type",
                color: AppColors.secondaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ).paddingOnly(top: 20),
              TextButton(
                onPressed: () async {
                  File file = await openFilePicker();
                  onSelectFile(file.path);
                },
                child: AppText(
                    text: "Pick File",
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.normal),
              ),
              const Divider(),
              TextButton(
                onPressed: () async {
                  File image = await openCamera();
                  onSelectFile(image.path);
                },
                child: AppText(
                    text: "From Camera",
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.normal),
              ),
              const Divider(),
              TextButton(
                      onPressed: () async {
                        File image = await openGallery();
                        onSelectFile(image.path);
                      },
                      child: AppText(
                          text: "From Gallery",
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.normal))
                  .paddingOnly(bottom: 20)
            ],
          );
        });
  }
}
