import 'package:get/get.dart';

import 'src/model.dart';

class IoC {
  static Future init() {
    Get.put(Model());

    return Future.value();
  }
}
