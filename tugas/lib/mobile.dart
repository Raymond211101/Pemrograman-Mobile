import 'package:flutter/material.dart';
import 'package:tugas/main.dart';
import 'package:tugas/landpage.dart';
import 'package:tugas/homepage.dart';
import 'package:tugas/arknight.dart';
import 'package:tugas/genshin.dart';
import 'package:tugas/mobile.dart';

class mobile extends StatefulWidget {
  const mobile({ Key? key }) : super(key: key);

  @override
  State<mobile> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<mobile> {

  String userID = "", nama ="",email ="",topup="";

  final controlleruserID = TextEditingController();
  final controllernama = TextEditingController();
  final controlleremail = TextEditingController();
  final controllertopop = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFC9D6DF),
     appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("KITSU TOP UP"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top:30,bottom: 30,),
            alignment: Alignment.center,
            child: Text("KITSU TOP UP",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            ),
            ),
          Column(
            children: [
              Container(
                color: Color(0xFFFFBAD7DF),
                margin: EdgeInsets.only(left: 15,right: 15),
                child: TextField(
                controller: controlleruserID,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Masukkan User ID",
                  labelText: "User ID",
                ),
            ),
              ),
            SizedBox(
              height: 30,
            ),
              Container(
                color: Color(0xFFFFBAD7DF),
                margin: EdgeInsets.only(left: 15,right: 15),
                child: TextField(
                controller: controllernama,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Masukkan Nama",
                  labelText: "Nama",
                ),
            ),
              ),
            SizedBox(
              height: 30,
            ),
              Container(
                color: Color(0xFFFFBAD7DF),
                margin: EdgeInsets.only(left: 15,right: 15),
                child: TextField(
                controller: controlleremail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Masukkan Email",
                  labelText: "Email",
                ),
            ),
              ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Color(0xFFFFBAD7DF),
              margin: EdgeInsets.only(left: 15,right: 15),
              child: TextField(
                controller: controllertopop,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Diamond",
                  labelText: "Mau TOP UP Berapa Bang ?",
                  ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  userID = controlleruserID.text;
                  nama = controllernama.text;
                  topup = controllertopop.text;
                  email = controlleremail.text;
                });
                },
                child: Text("Tampilkan",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
                  minimumSize: const Size(100, 50),
                ),
            ),
            ],
          ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFBAD7DF),
                  border: Border.all(width: 4),
                ),
                padding: EdgeInsets.only(bottom: 20),
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text(""),
                    Text("User ID : $userID",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                    Text("Nama Pembeli : $nama",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                    Text("Email : $email", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    ),
                    Text("TOP UP : $topup",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}