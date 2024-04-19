import 'package:bacasaku/app/data/provider/storage_provider.dart';
import 'package:bacasaku/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController with SingleGetTickerProviderMixin {
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

  void increment() => count.value++;
}
