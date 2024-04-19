import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profilepetugas_controller.dart';

class ProfilepetugasView extends GetView<ProfilepetugasController> {
  const ProfilepetugasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff161E5F),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.logout_rounded,
              color: Color.fromRGBO(255, 255, 255, 0.965),
            ),
            tooltip: 'Keluar',
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: Get.width,
            height: 250,
            color: Color(0xff161E5F),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage('assets/fotoprofil.png'),
                ),
                SizedBox(height: 5),
                Text(
                  'Username',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 20),
            alignment: Alignment.centerLeft,
            child: Text("Managemen Buku", style: TextStyle(color: Color(0xff161E5F),fontSize: 25, fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(Icons.book_rounded, size: 45,color: Color(0xff161E5F),),
                SizedBox(
                  width: 15,
                ),
                Container(
                  child: Text("Managemen Buku", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff161E5F)),),
                ),
                SizedBox(
                  width: 158,
                ),
                Container(
                  child: Icon(Icons.chevron_right_outlined, size: 25,color: Color(0xff161E5F),),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(Icons.layers_rounded, size: 45,color: Color(0xff161E5F),),
                SizedBox(
                  width: 15,
                ),
                Container(
                  child: Text("Managemen Kategori", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff161E5F)),),
                ),
                SizedBox(
                  width: 126,
                ),
                Container(
                  child: Icon(Icons.chevron_right_outlined, size: 25,color: Color(0xff161E5F),),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 20),
            alignment: Alignment.centerLeft,
            child: Text("Laporan", style: TextStyle(color: Color(0xff161E5F),fontSize: 25, fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(Icons.edit_document, size: 45,color: Color(0xff161E5F),),
                SizedBox(
                  width: 15,
                ),
                Container(
                  child: Text("Lihat Laporan", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff161E5F)),),
                ),
                SizedBox(
                  width: 197,
                ),
                Container(
                  child: Icon(Icons.chevron_right_outlined, size: 25,color: Color(0xff161E5F),),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
