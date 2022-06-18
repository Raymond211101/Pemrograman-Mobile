import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference riwayat = firestore.collection("riwayat");

class Pembayaran extends StatefulWidget {
  const Pembayaran({Key? key}) : super(key: key);

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

Widget page(String UID, String nominal, String email) {
  return Container(
      width: double.infinity,
      height: 180,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xFFFF4C3575), borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "UID : $UID",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "Nominal : $nominal",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            "email : ${email}",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ));
}

class _PembayaranState extends State<Pembayaran> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        StreamBuilder<QuerySnapshot>(
            stream: riwayat.snapshots(),
            builder: (_, snapshot) {
              return (snapshot.hasData)
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: snapshot.data!.docs
                          .map((e) => page(
                                e.get('UserId'),
                                e.get('Nominal'),
                                e.get('email'),
                              ))
                          .toList(),
                    )
                  : const Text('Loading...');
            }),
      ],
    );
  }
}
