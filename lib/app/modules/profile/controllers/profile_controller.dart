import 'package:bacasaku/app/data/constant/endpoint.dart';
import 'package:bacasaku/app/data/model/response_riwayat.dart';
import 'package:bacasaku/app/data/provider/api_provider.dart';
import 'package:bacasaku/app/data/provider/storage_provider.dart';
import 'package:bacasaku/app/routes/app_pages.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController with GetSingleTickerProviderStateMixin{
  late TabController tabController;

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  void onReady() {
    super.onReady();
  }

  void logout() async {
    await StorageProvider.write(StorageKey.status, '');
    await StorageProvider.write(StorageKey.token, '');

    Get.offAllNamed(Routes.LOGIN);
  }

  @override
  void onClose() {
    super.onClose();
  }

  // getData() async {
  //   change(null, status: RxStatus.loading());
  //   try {
  //     final response = await ApiProvider.instance()
  //         .get("${Endpoint.pinjam}/?userId=${StorageProvider.read(StorageKey.idUser)}");
  //     if (response.statusCode == 200) {
  //       final ResponseRiwayat responseRiwayat = ResponseRiwayat.fromJson(response.data);
  //       if (responseRiwayat.data!.isEmpty) {
  //         change(null, status: RxStatus.empty());
  //       } else {
  //         change(responseRiwayat as List<DataRiwayat>?, status: RxStatus.success());
  //       }
  //     } else {
  //       change(null, status: RxStatus.error("${response.data['message']}"));
  //     }
  //   } on DioError catch (e) {
  //     if (e.response != null) {
  //       change(null, status: RxStatus.error("${e.response!.data['message']}"));
  //     } else {
  //       change(null, status: RxStatus.error(e.message ?? ""));
  //     }
  //   } catch (e) {
  //     change(null, status: RxStatus.error(e.toString()));
  //   }
  // }

  void increment() => count.value++;
}

// class ProfileView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final ProfileController profileController = Get.put(ProfileController());

//     return GetBuilder<ProfileController>(
//       builder: (_) {
//         return Scaffold(
//           appBar: AppBar(
//             title: Text("Profile"),
//           ),
//           body: Center(
//             child: Text("Profile Content"),
//           ),
//         );
//       },
//     );
//   }
// }
