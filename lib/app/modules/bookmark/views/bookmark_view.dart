import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bookmark_controller.dart';

class BookmarkView extends GetView<BookmarkController> {
  const BookmarkView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 120,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5)),
                ),
                Container(
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Judul Buku",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
                Container(
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Penulis",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
