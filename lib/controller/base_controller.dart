import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:massenger/component/choose_image_dialoge.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final _selectedIndex = 0.obs;
  final _picker = ImagePicker();
  final _image = ''.obs;

  String get images => _image.value;

  int get selectedIndex => _selectedIndex.value;

  set selectedIndex(int value) => _selectedIndex.value = value;

  Future<bool> requestImagePermission() async {
    if (Platform.isAndroid) {
      Permission.camera.request().isGranted;
      Permission.storage.request().isGranted;
      return true;
    } else if (Platform.isIOS) {
      Permission.camera.request().isGranted;
      Permission.photos.request().isGranted;
      return true;
    }
    return false;
  }

  chooseProfileImage() async {
    final status = await requestImagePermission();
    if (status) {
        try {
          final isGallery = await Get.dialog(const ChooseImageDialog());
          XFile? image;
          if (isGallery != null && isGallery == true) {
            image = await _picker.pickImage(source: ImageSource.gallery);
          } else if (isGallery != null && isGallery == false) {
            image = await _picker.pickImage(source: ImageSource.camera);
          }
          if (image != null) _image.value = image.path;
        } catch (e) {
          print(e);
        }
      }

  }
}
