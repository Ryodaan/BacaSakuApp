import 'package:bacasaku/app/data/provider/storage_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'dart:developer';

import '../../../data/constant/endpoint.dart';
import '../../../data/model/response_detailbook.dart';
import '../../../data/provider/api_provider.dart';

class DetailbukuController extends GetxController with StateMixin<DataDetail> {
  final loading = false.obs;

  final userId = StorageProvider.read(StorageKey.idUser);
  final TextEditingController tanggalPengembalianController = TextEditingController();
  final bukuiId =  Get.parameters['id'];
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onTap() {
    QuickAlert.show(
      context: Get.context!,
      type: QuickAlertType.custom,
      barrierDismissible: true,
      confirmBtnColor: Color.fromRGBO(22, 30, 95, 10),
      confirmBtnText: 'Pinjam',
      customAsset: 'assets/banner_popup.jpg',
      onConfirmBtnTap: () async => await peminjaman(),
      widget: TextFormField(
        controller: tanggalPengembalianController,
        decoration: const InputDecoration(
          alignLabelWithHint: true,
          hintText: 'Masukan Tanggal Pengembalian',
          prefixIcon: Icon(
            Icons.date_range_rounded,
          ),
        ),
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.phone,
      ),
      title: "Formulir Peminjaman",
      
    );
  }

    Future<void> getData() async {
    change(null, status: RxStatus.loading());
    var idBuku = Get.parameters['id'];
    try {
      final response = await ApiProvider.instance().get('${Endpoint.buku}?id=$idBuku');
      if (response.statusCode == 200) {
        final ResponseDetailbook responseDetailbook = ResponseDetailbook.fromJson(response.data);
        if(responseDetailbook.data == null){
          change(null, status:  RxStatus.empty());
        } else {
          change(responseDetailbook.data, status: RxStatus.success());
        }
      } else {
        change(null, status: RxStatus.error("Gagal mengambil data"));
      }

    } on DioException catch (e) {
      if (e.response != null) {
        if (e.response?.data != null) {
          change(null, status: RxStatus.error("${e.response?.data['message']}"));
        }
      } else {
        change(null, status: RxStatus.error(e.message ?? ""));
      }

    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }

   Future<void> peminjaman() async {
    try {
     final response = await ApiProvider.instance().post(Endpoint.pinjam, data:({
      "UserID": userId, 
      "BookID": bukuiId,
      "TglPeminjaman": DateTime.now().toString().split(" ")[0],
      "TglPengembalian": tanggalPengembalianController.text.toString().split(" ")[0],
      "Statuspeminjaman": "dipinjam"
     }));
    } catch (e) {
      log(e.toString());
    }
  }


  void increment() => count.value++;
}
