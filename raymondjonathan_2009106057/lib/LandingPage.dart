import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'MainPage.dart';



class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF280031),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 150),
          Center(
            child: Lottie.asset('asset/Game.json', width: 250),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: const Center(
              child: Text(
                "Platform top-up terbesar, tercepat dan terpercaya",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: (() {
                Get.off(MainPage());
              }),
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    color: Colors.deepPurpleAccent,
                    child: const Center(
                      child: Text(
                        "TOP-UP SEKARANG",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}