/// @author think
/// @email TODO
/// @date: 2023.08.08
/// @description: TODO
/// @license: The MIT License

import 'package:camera/camera.dart';
import 'package:get/get.dart';

class CameraController extends GetxController {
  Future<List<CameraDescription>> _cameras = availableCameras();

  void initializeCamera() {}
}
