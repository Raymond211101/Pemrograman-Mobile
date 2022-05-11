import 'package:flutter/material.dart';
import 'package:tugas/main.dart';
import 'package:tugas/landpage.dart';
import 'package:tugas/homepage.dart';
import 'package:tugas/arknight.dart';
import 'package:tugas/genshin.dart';
import 'package:tugas/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => const landpage(),
        '/dua':(context) => const homepage(),
        '/tiga':(context) => const arknight(),
        '/empat':(context) => const genshin(),
        '/lima':(context) => const mobile(),
      },
    );
  }
}