/// @author think
/// @email TODO
/// @date: 2023.08.07
/// @description: TODO
/// @license: The MIT License

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late CameraController cameraController;
  late List<CameraDescription> _cameras;

  @override
  void initState() {
    super.initState();

    cameraController = CameraController(_cameras[0], ResolutionPreset.max);

    cameraController.initialize().then((_) {
      print('Camera');

      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    cameraController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!cameraController.value.isInitialized) {
      return Container(
        child: Text('camera'),
      );
    }

    return Scaffold(
      body: CameraPreview(cameraController),
    );
  }
}
