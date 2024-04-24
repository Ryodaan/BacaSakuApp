import 'package:bacasaku/app/data/provider/storage_provider.dart';
import 'package:bacasaku/app/modules/bookmark/views/bookmark_view.dart';
import 'package:bacasaku/app/modules/home/views/home_view.dart';
import 'package:bacasaku/app/modules/kategori/views/kategori_view.dart';
import 'package:bacasaku/app/modules/profile/views/profile_view.dart';
import 'package:bacasaku/app/modules/profileadmin/views/profileadmin_view.dart';
import 'package:get/get.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class LayoutController extends GetxController {
  var role = '';
  final tabIndex = 0.obs;
  final count = 0.obs;

    final screen = const [
    HomeView(),
    KategoriView(),
    BookmarkView(),
    ProfileView
    (),
  ];
  final screenAdmin = const [
    ProfileadminView(),
    ProfileadminView(),
    ProfileadminView(),
    ProfileadminView(),
  ];

  @override
  void onInit() {
    super.onInit();
    checkRole();
  }

  void changeTabIndex(int index) {
    tabIndex.value = index;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  checkRole() async {
    String token = StorageProvider.read(StorageKey.token);
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);

    role = decodedToken['role'];
    print("Role: $role");
  }

  void increment() => count.value++;
  // void onTapChange(index) {
  //   tabindex.value = index;
  // }
}
