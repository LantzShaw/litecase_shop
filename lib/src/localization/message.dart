/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.06.28
 * @Description: TODO
 */

import 'package:get/get.dart';

class Message extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'zh_CN': {
          'hello': '你好，世界！',
          'login': '登录',
          'register': '注册',
        },
        'en_US': {
          'hello': 'hello world',
          'login': 'login',
          'register': 'register'
        },
      };
}
