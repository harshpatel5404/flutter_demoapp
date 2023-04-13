import 'dart:io';
import 'package:flutter_demoapp/widgets/snackbar.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  File? image;

  final ImagePicker _picker = ImagePicker();
  Future captureImage() async {
    try {
      final image = await _picker.pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      this.image = imageTemp;
     update();
    } catch (e) {
      showCustomSnackBar("Failed to capture image");
    }
  }
}
