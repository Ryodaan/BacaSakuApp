import 'package:bacasaku/app/data/constant/endpoint.dart';
import 'package:bacasaku/app/data/model/response_login.dart';
import 'package:bacasaku/app/data/provider/api_provider.dart';
import 'package:bacasaku/app/data/provider/storage_provider.dart';
import 'package:bacasaku/app/routes/app_pages.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
    final loading = false.obs;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  login() async {
    loading(true);
    try {
      FocusScope.of(Get.context!).unfocus();
      formKey.currentState?.save();
      if (formKey.currentState!.validate()) {
        final response = await ApiProvider.instance().post(Endpoint.login,
            data:{
              "Username": usernameController.text.toString(),
              "Password": passwordController.text.toString()
            });
        if (response.statusCode == 201) {
          ResponseLogin responseLogin = ResponseLogin.fromJson(response.data);
          await StorageProvider.write(StorageKey.status, "logged");
          await StorageProvider.write(StorageKey.idUser, responseLogin.data!.userId.toString());
          print("Status: ${StorageProvider.read(StorageKey.status)}");
          await StorageProvider.write(StorageKey.token,responseLogin.token!);
          // await StorageProvider.write(StorageKey.status, "logges");
          Get.offAllNamed(Routes.LAYOUT);
        } else {
          Get.snackbar("Sorry", "Login gagal", backgroundColor: Colors.orange);
        }
      }
      loading(false);
    } on dio.DioException catch (e) {
      loading(false);
      if (e.response != null) {
        if (e.response?.data != null) {
          Get.snackbar("Sorry", "${e.response?.data['message']}",
              backgroundColor: Colors.red);
        }
      } else {
        Get.snackbar("Sorry", e.message ?? "", backgroundColor: Colors.red);
      }
    } catch (e) {
      Get.snackbar("Sorry", e.toString(), backgroundColor: Colors.red);
    }
  }
  void increment() => count.value++;
}
