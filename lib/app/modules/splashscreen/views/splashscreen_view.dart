import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    // Future.delayed(Duration(seconds: 5), () {
    //   controller.checkStatus();
    // });

    return Scaffold(
      body: const Center(
        child: Text(
          'Jangan Lupa Top Up di J Gaming Store',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
