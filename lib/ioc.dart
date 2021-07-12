import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'src/common.dart';
import 'src/model.dart';
import 'ui/common.dart';

class IoC {
  static Future init() async {
    await Hive.initFlutter();

    Get.put(await Hive.openBox(kSave), tag: kSave)
        .watch(key: kDarkMode)
        .listen(setThemeMode);

    Get.put(Model());
  }
}

void setThemeMode(x) {
  Get.changeThemeMode(
    getThemeMode(
      Get.find(tag: kSave),
    ),
  );
}
