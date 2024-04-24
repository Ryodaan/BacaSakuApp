import 'dart:developer';

import 'package:bacasaku/app/data/constant/endpoint.dart';
import 'package:bacasaku/app/data/model/response_peminjaman_userid.dart';
import 'package:bacasaku/app/data/model/response_riwayat.dart';
import 'package:bacasaku/app/data/provider/api_provider.dart';
import 'package:bacasaku/app/data/provider/storage_provider.dart';
import 'package:bacasaku/app/routes/app_pages.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  final count = 0.obs;
  final userid = StorageProvider.read(StorageKey.idUser);
  final dataPemijaman = RxList<Data>();
  final loading = false.obs;

  @override
  void onInit() async {
    super.onInit();
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    await getPeminjaman();
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

  Future<void> getPeminjaman() async {
    try {
      loading(true);
      final response = await ApiProvider.instance()
          .get(Endpoint.pinjam, queryParameters: {"userId": userid});
      if (response.statusCode == 200) {
        loading(false);
        final result = ResponsePeminjamanUserid.fromJson(response.data);
        if (result.total != 0) {
          dataPemijaman.value = result.data!;
        }
      }
    } catch (e) {
      log(e.toString());
      loading(false);
    }
  }

  void increment() => count.value++;
}
