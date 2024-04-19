import 'package:get/get.dart';

import '../controllers/profilepetugas_controller.dart';

class ProfilepetugasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilepetugasController>(
      () => ProfilepetugasController(),
    );
  }
}
