import 'package:get/get.dart';

class Model extends GetxController {
  var count = 0.obs;

  @override
  void onClose() {
    count.close();
    super.onClose();
  }
}
