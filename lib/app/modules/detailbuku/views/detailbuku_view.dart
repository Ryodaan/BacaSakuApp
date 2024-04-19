import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/detailbuku_controller.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quickalert/quickalert.dart';

class DetailbukuView extends GetView<DetailbukuController> {
  const DetailbukuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(22, 30, 95, 10),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: controller.obx((state) =>
            Container(
                width: Get.width,
                height: Get.height,
                child: Stack(
                  children: [
                    Container(
                      width: Get.width,
                      child: Stack(
                        children: [
                          Container(
                            height: 200,
                            width: 450,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(22, 30, 95, 10),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: Get.height * 0.10, left: Get.width * 0.285),
                            width: 180,
                            height: 250,
                            decoration: BoxDecoration(
                              image: state!.gambar != null
                                  ? DecorationImage(
                                image: NetworkImage(state.gambar!),
                                fit: BoxFit.cover,
                              ) : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: Get.height * 0.37,
                      child: Container(
                        width: Get.width,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              " ${state.judul ?? ''} ",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " ${state.penulis ?? ''} ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(1000, 191, 191, 191)),
                            ),
                            SizedBox(
                              width: Get.width * 0.5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.remove_red_eye_rounded,
                                        color: Color.fromRGBO(22, 30, 95, 10),
                                        size: 20,
                                      ),
                                      Text("17.5K", style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.yellow,
                                        size: 20,
                                      ),
                                      Text("4.5/5", style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                        side: MaterialStateProperty.all(BorderSide(
                                            width: 2, color: Color.fromRGBO(22, 30, 95, 10)))),
                                    child: Text("Pinjam Buku", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(22, 30, 95, 10)),),
                                    onPressed: () {
                                      controller.onTap();
                                    },
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                        side: MaterialStateProperty.all(BorderSide(
                                            width: 2, color: Color.fromRGBO(22, 30, 95, 10)))),
                                    child: Icon(
                                      Icons.bookmark,
                                      color: Color.fromRGBO(22, 30, 95, 10),
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Divider(
                              color: Color.fromRGBO(22, 30, 95, 10),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tahun Terbit",
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  Text("${state.tahunterbit ?? ''}"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Genre",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration( color: Color.fromRGBO(22, 30, 95, 1), borderRadius: BorderRadius.all(Radius.circular(3))),
                                              padding: EdgeInsets.all(2),
                                              child: Text("Romance", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 3),
                                              decoration: BoxDecoration( color: Color.fromRGBO(22, 30, 95, 10), borderRadius: BorderRadius.all(Radius.circular(3))),
                                              padding: EdgeInsets.all(2),
                                              child: Text("Romance", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 3),
                                              decoration: BoxDecoration( color: Color.fromRGBO(22, 30, 95, 10), borderRadius: BorderRadius.all(Radius.circular(3))),
                                              padding: EdgeInsets.all(2),
                                              child: Text("Romance", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 3),
                                              decoration: BoxDecoration( color: Color.fromRGBO(22, 30, 95, 10), borderRadius: BorderRadius.all(Radius.circular(3))),
                                              padding: EdgeInsets.all(2),
                                              child: Text("Romance", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),),
                                            ),

                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 3,
                                              blurStyle: BlurStyle.normal)
                                        ]),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sinopsis",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                            "${state.deskripsi ?? ''}")
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      child: RatingBarIndicator(
                                        rating: 4.5,
                                        itemBuilder: (context, index) => Icon(
                                          Icons.star_rounded,
                                          color: Colors.amber,
                                        ),
                                        itemCount: 5,
                                        itemSize: 50.0,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 10, color: Color(0xff161E5F)),
                                  borderRadius: BorderRadius.circular(20)),
                              labelText: 'Enter your username',
                            ),
                          ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
        ),
      ),
    );
  }
}
