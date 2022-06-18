import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raymondjonathan_2009106057/Pembayaran.dart';
import 'Detailpage.dart';
import 'TextController.dart';

class MainPage extends StatelessWidget {
  textcontroller tc = Get.put(textcontroller());

  MainPage({Key? key}) : super(key: key);
  Card Content(String gambar, String judul) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black,
      color: Colors.white30,
      child: SizedBox(
        width: 130,
        height: 50,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(gambar), fit: BoxFit.cover)),
            ), //CircleAvatar
            SizedBox(
              height: 20,
            ), //SizedBox
            Text(
              judul,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ), //Textstyle
            ), //Text
          ],
        ), //Padding
      ), //SizedBox
    ); //Card
  }

  ListView Main() {
    return ListView(children: [
      SizedBox(height: 100),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: const Text("POPULAR",
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      SizedBox(height: 20),
      Container(
        height: 210,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            InkWell(
                onTap: () {
                  Get.to(DetailPage(
                    title: 'Mobile Legend',
                    gambar: "asset/CoverML.jpg",
                    desc:
                        "Top up ML Diamond hanya dalam hitungan detik! Cukup masukan Username MLBB Anda, pilih jumlah Diamond yang Anda inginkan, selesaikan pembayaran, dan Diamond akan secara langsung ditambahkan ke akun Mobile Legends Anda",
                  ));
                },
                child: Content("asset/MobileLegend.png", "Mobile Legend")),
            InkWell(
              onTap: () {
                Get.to(DetailPage(
                  title: 'Apex Legend',
                  gambar: "asset/CoverApex.jpg",
                  desc:
                      "Top up Apex Legends Mobile Syndicate Gold Pack hanya dalam hitungan detik! Cukup masukan ID Apex Legends Mobile Anda, pilih top up Apex Legends Mobile yang Anda inginkan, selesaikan pembayaran, dan top up akan secara langsung ditambahkan ke akun Apex Legends Mobile Anda.",
                ));
              },
              child: Content("asset/Apex.png", "Apex Legend"),
            ),
            Content("asset/FreeFire.png", "Free Fire"),
            Content("asset/Valorant.jpg", "Valorant"),
          ],
        ),
      ),
      SizedBox(height: 40),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: const Text("New Titles",
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      SizedBox(height: 20),
      Container(
        height: 210,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Content("asset/IYI.png", "IQIYI"),
            Content("asset/Thenan.png", "Thenan Arena"),
            Content("asset/Sus.png", "Super Sus"),
            Content("asset/Sausage.png", "Sausage Man"),
          ],
        ),
      ),
    ]);
  }

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF280031),
      body: PageView(
        controller: _pageController,
        children: [
          Main(),
          Pembayaran()
        ],
        onPageChanged: (index) {
          tc.selectIndex(index);
        },
      ),
      // ignore: missing_required_param
      bottomNavigationBar: Obx(() => BottomBar(
            selectedIndex: tc.selectedIndex.value,
            onTap: (int index) {
              tc.selectIndex(index);
              _pageController.jumpToPage(tc.selectedIndex.value);
            },
            items: <BottomBarItem>[
              BottomBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                activeColor: Colors.blue,
              ),
              BottomBarItem(
                icon: Icon(Icons.favorite),
                title: Text('Pembayaran'),
                activeColor: Colors.red,
                darkActiveColor: Colors.red.shade400,
              ), // Optional
            ],
          )),
    );
  }
}
