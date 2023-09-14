/// @author think
/// @email TODO
/// @date 2023.09.13
/// @description TODO
/// @license The MIT License

import 'package:litecase_shop/src/constants/app_caches.dart';
import 'package:litecase_shop/src/utils/local_storage.dart';

class Auth {
  /// 清除授权
  static void clearAuthorization() {
    LocalStorage.remove("token");
  }

  /// 获取授权token
  /// Future<String?>
  static Future<String?> getAuthorization() async {
    String? token = await LocalStorage.get(TOEKN_KEY);
    if (token == null) {
      String? basic = await LocalStorage.get("token");
      if (basic == null) {
        /// 提示输入账号密码
      } else {
        /// 通过 basic 去获取token，获取到设置，返回token
        return "Basic $basic";
      }
    } else {
      return token;
    }
  }
}
