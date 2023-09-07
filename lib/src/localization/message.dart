/// @author think
/// @email TODO
/// @date 2023.06.28
/// @description TODO
/// @license The MIT License

import 'package:get/get.dart';
import 'package:litecase_shop/src/localization/en_US.dart';
import 'package:litecase_shop/src/localization/zh_CN.dart';

class Message extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'zh_CN': zh_CN,
        'en_US': en_US,
      };
}
