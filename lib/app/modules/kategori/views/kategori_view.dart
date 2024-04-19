import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kategori_controller.dart';

class KategoriView extends GetView<KategoriController> {
  const KategoriView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kategori',
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
                      'Halaman ini di gunakan untuk mencari buku yang kalian inginkan')));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                onChanged: (value) {
                  // controller.search(value); // Memanggil fungsi pencarian saat teks berubah
                },
                decoration: InputDecoration(
                  hintText: "Cari buku....",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  suffixIcon: InkWell(
                    onTap: () {
                      // controller.search(controller.searchController.text); // Memanggil fungsi pencarian saat tombol pencarian ditekan
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 10, 51, 236),borderRadius: BorderRadius.circular(20)
                  ),
                  width: 180,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text('Fantasi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 10, 51, 236),borderRadius: BorderRadius.circular(20)
                  ),
                  width: 180,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text('Fantasi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 10, 51, 236),borderRadius: BorderRadius.circular(20)
                  ),
                  width: 180,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text('Fantasi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 10, 51, 236),borderRadius: BorderRadius.circular(20)
                  ),
                  width: 180,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text('Fantasi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 10, 51, 236),borderRadius: BorderRadius.circular(20)
                  ),
                  width: 180,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text('Fantasi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 10, 51, 236),borderRadius: BorderRadius.circular(20)
                  ),
                  width: 180,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text('Fantasi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 10, 51, 236),borderRadius: BorderRadius.circular(20)
                  ),
                  width: 180,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text('Fantasi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 10, 51, 236),borderRadius: BorderRadius.circular(20)
                  ),
                  width: 180,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text('Fantasi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 10, 51, 236),borderRadius: BorderRadius.circular(20)
                  ),
                  width: 180,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text('Fantasi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 10, 51, 236),borderRadius: BorderRadius.circular(20)
                  ),
                  width: 180,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text('Fantasi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 10, 51, 236),borderRadius: BorderRadius.circular(20)
                  ),
                  width: 180,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text('Fantasi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 10, 51, 236),borderRadius: BorderRadius.circular(20)
                  ),
                  width: 180,
                  height: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text('Fantasi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
