/// @author think
/// @email TODO
/// @date 2023.09.15
/// @description TODO
/// @license The MIT License

import 'package:get/get.dart';
import 'package:litecase_shop/src/features/category/controllers/Category.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryController());
  }
}
