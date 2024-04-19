import 'package:bacasaku/app/modules/bookmark/views/bookmark_view.dart';
import 'package:bacasaku/app/modules/home/views/home_view.dart';
import 'package:bacasaku/app/modules/kategori/views/kategori_view.dart';
import 'package:bacasaku/app/modules/profile/views/profile_view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/layout_controller.dart';

class LayoutView extends GetView<LayoutController> {
  const LayoutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.role == 'admin' || controller.role == 'petugas') {
          return controller.screenAdmin[controller.tabIndex.value];
        } else {
          return controller.screen[controller.tabIndex.value];
        }
      }),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        color: const Color(0xff161E5F),
        items: <Widget>[
          Icon(Icons.home, size: 40, color: Colors.white),
          Icon(Icons.search, size: 40, color: Colors.white),
          Icon(Icons.bookmark, size: 40, color: Colors.white),
          Icon(Icons.person, size: 40, color: Colors.white),
        ],
        onTap: (index) {
          controller.changeTabIndex(index);
        },
      ),
    );
  }
}
