import 'package:flutter/material.dart';
import 'package:tugas/main.dart';
import 'package:tugas/landpage.dart';
import 'package:tugas/homepage.dart';
import 'package:tugas/arknight.dart';
import 'package:tugas/genshin.dart';
import 'package:tugas/mobile.dart';

class landpage extends StatelessWidget {
  const landpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/land.jpg"),
          fit: BoxFit.cover,
          ),
          ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              )
            ),
            padding: EdgeInsets.only(top: 100),
            child: const Text("KITSU TOP UP",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            ),
            ),
            Container(
              padding: EdgeInsets.only(top: 500),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/dua');
                },
                child: Text("Beli Dong Bang",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
                  minimumSize: const Size(100, 50),
                ),
              ),
            )
        ],
      ),
    );
  }
}