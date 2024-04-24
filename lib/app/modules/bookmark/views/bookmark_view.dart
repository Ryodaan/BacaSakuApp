import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bookmark_controller.dart';

class BookmarkView extends GetView<BookmarkController> {
  const BookmarkView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final widthBody = MediaQuery.of(context).size.width;
    final heightBody = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bookmark',
          style: TextStyle(
              color: Color.fromRGBO(22, 30, 95, 10),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.question_mark_rounded,
              color: Color.fromRGBO(22, 30, 95, 10),
            ),
            tooltip: 'Tentang halaman ini',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                      'Halaman ini di gunakan untuk menyimpan buku yang sudah anda tambahkan')));
            },
          ),
        ],
      ),
      body: Container(
        width: widthBody,
        height: heightBody,
        padding: const EdgeInsets.all(10),
        child: Obx(() => controller.loading.value ? const Center(child: CircularProgressIndicator(),) : GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 3/7,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5
            ), 
            itemBuilder: (context, index) {
              return InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      child: ClipRRect(
                        child: Image.network(controller.dataKoleksi[index].buku!.gambar!),
                      ),
                    ),

                    Text(
                      controller.dataKoleksi[index].buku!.judul.toString(),
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 16,
                        overflow: TextOverflow.ellipsis
                      ),
                    )
                  ],
                ),
              );
            },
            itemCount: controller.dataKoleksi.length,
            ))
      ),
    );
  }
}
