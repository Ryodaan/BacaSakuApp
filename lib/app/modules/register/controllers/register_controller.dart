import 'package:bacasaku/app/data/constant/endpoint.dart';
import 'package:bacasaku/app/data/provider/api_provider.dart';
import 'package:bacasaku/app/data/provider/storage_provider.dart';
import 'package:bacasaku/app/routes/app_pages.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  final count = 0.obs;
  final loading = false.obs;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController namalengkapController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
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

  register() async {
    loading(true);
    try {
      FocusScope.of(Get.context!).unfocus();
      formKey.currentState?.save();
      if (formKey.currentState!.validate()) {
        final response = await ApiProvider.instance().post(Endpoint.register,
            data:{
              "Username": usernameController.text.toString(),
              "Email": emailController.text.toString(),
              "Password": passwordController.text.toString(),
              "Alamat": alamatController.text.toString(),
              "NamaLengkap": namalengkapController.text.toString()
            });
        if (response.statusCode == 200) {
          await StorageProvider.write(StorageKey.status, "logges");
          Get.offAllNamed(Routes.LOGIN);
        } else {
          Get.snackbar("Sorry", "Registrasi gagal", backgroundColor: Colors.orange);
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
