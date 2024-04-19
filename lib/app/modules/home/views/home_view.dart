import 'package:bacasaku/app/routes/app_pages.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
          body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                                padding: EdgeInsets.all(10),
                                child: SizedBox(
                    width: Get.width,
                    child: CarouselSlider(
                      options: CarouselOptions(
                          height: 300.0,
                          enlargeCenterPage: true,
                          viewportFraction: 1,
                          aspectRatio: 4.0,
                          initialPage: 1,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 5),
                          scrollDirection: Axis.horizontal,
                          autoPlayAnimationDuration:
                          const Duration(milliseconds: 800)),
                      items: [1, 2, 3].map((item) {
                        return Builder(
                          builder: (BuildContext context) {
                            return SizedBox(
                                width: Get.width,
                                child: InkWell(
                                  onTap: () {},
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        "assets/banner_${item.toString()}.png",
                                        fit: BoxFit.fill,
                                      )),
                                ));
                          },
                        );
                      }).toList(),
                    ))),
                      SizedBox(
                              height: 20,
                      ),
                      SizedBox(
                              height: 10,
                      ),
                      Row(
                              children: [
                                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text("Disarankan untuk Anda",
                      style: TextStyle(fontSize: 20)),
                                )
                              ],
                      ),
                      Container(
                              height: 240,
                              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: controller.obx((state) => ListView.builder(
                      itemCount: state?.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.toNamed(Routes.DETAILBUKU,
                                parameters: {
                                  'id': state[index].bukuID.toString()
                                }
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 130,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    image: state![index].gambar != null ?
                                    DecorationImage(
                                      image: NetworkImage(
                                        state![index].gambar!
                                    ),
                                    fit: BoxFit.cover
                                    ) : null
                                  ),
                                  child: Center(
                                    child: state![index].gambar == null
                                        ? Text('Gambar tidak tersedia', style: TextStyle(color: Colors.red,),
                                    ) : null,
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    state![index].judul ?? '',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    state![index].penulis ?? '',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }))),
                      ),
                      SizedBox(
                              height: 10,
                      ),
                      Row(
                              children: [
                                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text("Koleksi",
                      style: TextStyle(fontSize: 20)),
                                )
                              ],
                      ),
                      Container(
                              height: 240,
                              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: controller.obx((state) => ListView.builder(
                      itemCount: state?.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.toNamed(Routes.DETAILBUKU,
                            parameters: {
                              'id': state[index].bukuID.toString()
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                                                Container(
                                  width: 130,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    image: state![index].gambar != null ?
                                    DecorationImage(
                                      image: NetworkImage(
                                        state![index].gambar!
                                    ),
                                    fit: BoxFit.cover
                                    ) : null
                                  ),
                                  child: Center(
                                    child: state![index].gambar == null
                                        ? Text('Gambar tidak tersedia', style: TextStyle(color: Colors.red,),
                                    ) : null,
                                  ),
                                ),
                                 Container(
                                  width: 100,
                                  child: Text(
                                    state![index].judul ?? '',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    state![index].penulis ?? '',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }))),
                      ),
                    ],
                  ),
                ),
            ),
          ),
        );
  }
}


// class HomeView extends GetView<HomeController> {
//   const HomeView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Buku Populer",
//                   style: TextStyle(
//                       color: Color(0xff161E5F),
//                       fontFamily: 'Poppins',
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold),
//                 ),

//               Icon(Icons.arrow_circle_right_rounded,color: Color(0xff161E5F),size: 25,)
//               ],
//             ),
//           ),

//           Container(
//         height: 200.0,
//         child: ListView(
//           scrollDirection: Axis.horizontal,
//           children: <Widget>[
//             Container(
//               margin: EdgeInsets.all(8.0),
//               width: 130.0,
//               color: Colors.red,
//               child: Image.asset(
//                 'assets/cover_1.png',
//                 fit: BoxFit.cover,
//               ),
//             ),
           
//             Container(
//               margin: EdgeInsets.all(8.0),
//               width: 130.0,
//               color: Colors.green,
//               child:Image.asset(
//                 'assets/cover_2.png',
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.all(8.0),
//               width: 130.0,
//               color: Colors.orange,
//               child: Image.asset(
//                 'assets/cover_3.png',
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.all(8.0),
//               width: 130.0,
//               color: Colors.purple,
//               child: Image.asset(
//                 'assets/cover_4.png',
//                 fit: BoxFit.cover,
//               ),
//             ),
//              Container(
//               margin: EdgeInsets.all(8.0),
//               width: 130.0,
//               color: Colors.blue,
//               child: Image.asset(
//                 'assets/cover_5.png',
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ],
//         ),
//       ),
//         ],
//       ),
//     );
//   }
// }
