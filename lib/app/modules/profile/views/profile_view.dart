import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
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
            onPressed: () {
              controller.logout();
            },
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
            width: Get.width, // Atau sesuaikan dengan lebar yang diinginkan
            height: 50, // Sesuaikan dengan tinggi yang diinginkan
            child: TabBar(
              controller: controller.tabController,
              tabs: [
                Tab(
                  child: Text(
                    "Peminjaman",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "Riwayat",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height *
                0.5, // Sesuaikan dengan tinggi yang diinginkan
            child: TabBarView(controller: controller.tabController, children: [
              Container(
                height: Get.height,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              width: 150,
                              height: 190,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5)),
                                width: 10,
                              ),
                            ),
                            Container(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Naga Hitam",
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.remove_red_eye_rounded,
                                              color: Color.fromRGBO(
                                                  22, 30, 95, 10),
                                              size: 20,
                                            ),
                                            Text(
                                              "17.5K",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star_rounded,
                                              color: Colors.yellow,
                                              size: 20,
                                            ),
                                            Text(
                                              "4.5/5",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 250,
                                      child: Text(
                                        "Reprehenderit laborum veniam cillum id dolor aliquip eiusmod consequat eu. Qui ullamco id laboris adipisicing velit et. Et ut enim commodo anim enim incididunt in. Officia reprehenderit nostrud sint irure et sunt aliqua aliquip ea ad id. Reprehenderit sit nostrud nisi sint eni.",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    22, 30, 95, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(3))),
                                            padding: EdgeInsets.all(2),
                                            child: Text(
                                              "Romance",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 3),
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    22, 30, 95, 10),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(3))),
                                            padding: EdgeInsets.all(2),
                                            child: Text(
                                              "Romance",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 3),
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    22, 30, 95, 10),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(3))),
                                            padding: EdgeInsets.all(2),
                                            child: Text(
                                              "Romance",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          side: MaterialStateProperty.all(
                                              BorderSide(
                                                  width: 2,
                                                  color: Color.fromRGBO(
                                                      22, 30, 95, 10))),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      5))), // Menyetel border radius menjadi nol
                                        ),
                                        onPressed: () {},
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.book,
                                              color: Color.fromRGBO(
                                                  22, 30, 95, 10),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              "Pinjam Lagi",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color.fromRGBO(
                                                      22, 30, 95, 10)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                height: Get.height,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              width: 150,
                              height: 190,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5)),
                                width: 10,
                              ),
                            ),
                            Container(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Naga Hitam",
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.remove_red_eye_rounded,
                                              color: Color.fromRGBO(
                                                  22, 30, 95, 10),
                                              size: 20,
                                            ),
                                            Text(
                                              "17.5K",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star_rounded,
                                              color: Colors.yellow,
                                              size: 20,
                                            ),
                                            Text(
                                              "4.5/5",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 250,
                                      child: Text(
                                        "Reprehenderit laborum veniam cillum id dolor aliquip eiusmod consequat eu. Qui ullamco id laboris adipisicing velit et. Et ut enim commodo anim enim incididunt in. Officia reprehenderit nostrud sint irure et sunt aliqua aliquip ea ad id. Reprehenderit sit nostrud nisi sint eni.",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    22, 30, 95, 1),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(3))),
                                            padding: EdgeInsets.all(2),
                                            child: Text(
                                              "Romance",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 3),
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    22, 30, 95, 10),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(3))),
                                            padding: EdgeInsets.all(2),
                                            child: Text(
                                              "Romance",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 3),
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    22, 30, 95, 10),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(3))),
                                            padding: EdgeInsets.all(2),
                                            child: Text(
                                              "Romance",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          side: MaterialStateProperty.all(
                                              BorderSide(
                                                  width: 2,
                                                  color: Color.fromRGBO(
                                                      22, 30, 95, 10))),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5))), // Menyetel border radius menjadi nol
                                        ),
                                        onPressed: () {},
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.book,
                                              color: Color.fromRGBO(
                                                  22, 30, 95, 10),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              "Pinjam Lagi",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Color.fromRGBO(
                                                      22, 30, 95, 10)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
