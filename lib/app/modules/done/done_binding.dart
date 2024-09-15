import 'package:get/get.dart';

import 'done_controller.dart';

class DoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DoneController>(
      () => DoneController(),
    );
  }
}
