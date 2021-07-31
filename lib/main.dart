import 'package:flutter/material.dart';
import 'package:nome_work_6/home_work.dart';
import 'package:nome_work_6/home_work_2.dart';
import 'package:nome_work_6/home_work_3.dart';
import 'package:nome_work_6/home_work_4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Задание 1
      home: HomeWork(),
      // Задание 2
      // home: HomeWork2(),
      // Задание 3
      // home: HomeWork3(),
      // Задание 4
      // home: HomeWork4(),
    );
  }
}
