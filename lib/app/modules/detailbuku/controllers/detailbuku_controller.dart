import 'package:bacasaku/app/data/provider/storage_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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

  // void onTap() {
  //   QuickAlert.show(
  //     context: Get.context!,
  //     type: QuickAlertType.custom,
  //     barrierDismissible: true,
  //     confirmBtnColor: Color.fromRGBO(22, 30, 95, 10),
  //     confirmBtnText: 'Pinjam',
  //     customAsset: 'assets/banner_popup.jpg',
  //     onConfirmBtnTap: () async {
  //       await peminjaman();
  //     },
  //     widget: TextFormField(
  //       controller: tanggalPengembalianController,
  //       decoration: const InputDecoration(
  //         alignLabelWithHint: true,
  //         hintText: 'Masukan Tanggal Pengembalian',
  //         prefixIcon: Icon(
  //           Icons.date_range_rounded,
  //         ),
  //       ),
  //       textInputAction: TextInputAction.next,
  //       keyboardType: TextInputType.phone,
  //     ),
  //     title: "Formulir Peminjaman",
      
  //   );
  // }

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

  post() async {
    loading(true);
    try {
      FocusScope.of(Get.context!).unfocus(); //ngeclose keyboard
      formKey.currentState?.save();
      if(formKey.currentState!.validate()) {
        // final tglPinjam = tglPinjamController.text;
        final tglKembali = tanggalPengembalianController.text;

        final response = await ApiProvider.instance().post(Endpoint.pinjam,
            data:
            {
              "UserID": int.parse(StorageProvider.read(StorageKey.idUser)),
              "BukuID": int.parse(Get.parameters['id'].toString()),
              // "TglPeminjaman": tglPinjam,
              "Tanggalpengembalian": tglKembali,
            });
        if (response.statusCode == 201) {
          String formattedTglPeminjaman = DateFormat('yyyy-MM-dd').format(DateTime.now());
          QuickAlert.show(
            context: Get.context!,
            type: QuickAlertType.success,
            confirmBtnText: 'Yey',
            title: 'Selamat!',
            textAlignment: TextAlign.center,
            text: 'Berhasil meminjam buku ${state?.judul.toString()}',
            onConfirmBtnTap: () {
              Get.back();
            }
          );
        } else {
          Get.snackbar("Sorry", "Gagal meminjam", backgroundColor: Colors.orange);
        }
      }
    } on DioException catch (e){
      loading(false);
      if (e.response != null) {
        if (e.response?.data != null) {
          QuickAlert.show(
            context: Get.context!,
            type: QuickAlertType.error,
            title: 'Gagal',
            titleColor: Colors.red,
            text: '${e.response?.data['message']}',
            confirmBtnText: 'OK',
            confirmBtnColor: Colors.red,
          );
        }
      } else {
        Get.snackbar("Sorry", e.message ?? "", backgroundColor: Colors.red);
      }
    } catch (e) {
      loading(false);
      Get.snackbar("Error", e.toString(), backgroundColor: Colors.red);
    }
  }

  //  Future<void> peminjaman() async {
  //   try {
      
  //    final response = await ApiProvider.instance().post(Endpoint.pinjam, data:({
  //     "UserID": userId, 
  //     "BookID": bukuiId,
  //     "TglPeminjaman": DateTime.now().toString().split(" ")[0],
  //     "TglPengembalian": tanggalPengembalianController.text.toString().split(" ")[0],
  //     "Statuspeminjaman": "dipinjam",

  //    }));
  //    if (response.statusCode == 200) {
  //         String formattedTglPeminjaman = DateFormat('yyyy-MM-dd').format(DateTime.now());
  //         QuickAlert.show(
  //           context: Get.context!,
  //           type: QuickAlertType.success,
  //           confirmBtnText: 'Yey',
  //           title: 'Selamat!',
  //           textAlignment: TextAlign.center,
  //           text: 'Berhasil meminjam buku ${state?.judul.toString()}',
  //           onConfirmBtnTap: () {
  //             Get.back();
  //           }
  //         );
  //    }
  //   } catch (e) {
  //     log(e.toString());
  //   }
  // }

  Future<void> addKoleksi() async {
    try {
      final response = await ApiProvider.instance().post(Endpoint.koleksi, data: ({
        "UserID": userId,
        "BookID": bukuiId
      }));

      if (response.statusCode == 201) {
        log("berhasil");
      }else if(response.statusCode == 400){
        log("Sudah ada ya!");
      }

    } catch (e) {
      log(e.toString());
    }
  }


  void increment() => count.value++;
}
