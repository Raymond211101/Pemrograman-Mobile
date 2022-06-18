import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'MainPage.dart';
import 'TextController.dart';

class Hasil extends StatelessWidget {
  Hasil({Key? key}) : super(key: key);
  textcontroller tc = Get.put(textcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF280031),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "User ID : ${tc.UserID}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Text(
              "Nominal TOP UP : ${tc.TOPUP}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Text(
              "Email : ${tc.Email}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Pembayaran Berhasil",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              tc.harga.value.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              textAlign: TextAlign.center,
              "Silahkan Klik Tombol Kembali untuk Balik Ke Main Page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: ElevatedButton(
                  onPressed: () => Get.to(MainPage()),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFF0AA1DD), shape: StadiumBorder()),
                  child: Text(
                    "Kembali",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}