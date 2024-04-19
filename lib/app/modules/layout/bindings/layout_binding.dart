import 'package:bacasaku/app/modules/bookmark/controllers/bookmark_controller.dart';
import 'package:bacasaku/app/modules/home/controllers/home_controller.dart';
import 'package:bacasaku/app/modules/kategori/controllers/kategori_controller.dart';
import 'package:bacasaku/app/modules/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../controllers/layout_controller.dart';

class LayoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayoutController>(
      () => LayoutController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<KategoriController>(
      () => KategoriController(),
    );
    Get.lazyPut<BookmarkController>(
      () => BookmarkController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
