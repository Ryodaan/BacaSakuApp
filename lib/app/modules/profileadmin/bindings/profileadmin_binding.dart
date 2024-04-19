import 'package:get/get.dart';

import '../controllers/profileadmin_controller.dart';

class ProfileadminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileadminController>(
      () => ProfileadminController(),
    );
  }
}
