import 'dart:developer';

import 'package:bacasaku/app/data/model/response_koleksi_userid.dart';
import 'package:bacasaku/app/data/provider/api_provider.dart';
import 'package:bacasaku/app/data/provider/storage_provider.dart';
import 'package:get/get.dart';

import '../../../data/constant/endpoint.dart';

class BookmarkController extends GetxController {
  //TODO: Implement BookmarkController

  final loading = false.obs;
  final count = 0.obs;

  final dataKoleksi=RxList<DataKoleksiUserid>();

  final userId = StorageProvider.read(StorageKey.idUser);
  @override
  void onInit()async {
    super.onInit();
    await getKoleksi();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  Future<void> getKoleksi() async{
    try{
      final response = await ApiProvider.instance().get(Endpoint.koleksi, queryParameters: {
        "userId": userId
      });
      if(response.statusCode==200){
        final koleksi=ResponseKoleksiUserid.fromJson(response.data);
        if(koleksi.data != null){
          dataKoleksi.value = koleksi.data!;
        }
      }
    }catch(e){
      log(e.toString());
    }
  }
}
