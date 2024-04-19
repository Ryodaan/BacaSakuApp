import 'package:bacasaku/app/data/model/response_buku.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KategoriController extends GetxController {
  // TextEditingController searchController = TextEditingController();
  // List<DataBuku>? bookList;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  //   void search(String keyword) {
  //   if (bookList != null) {
  //     List<DataBuku> filteredList = bookList!.where((book) =>
  //         book.judul!.toLowerCase().contains(keyword.toLowerCase())).toList();
  //     change(filteredList, status: RxStatus.success());
  //   }
  // }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
