import 'package:flutter_bmi_calculator/ChiTietMT.dart';
import 'package:flutter_bmi_calculator/LoaiMTPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/MT_page.dart';
import 'package:flutter_bmi_calculator/Models/LoaiMayTinh.dart';
import 'package:flutter_bmi_calculator/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quản Lý Thông Tin Máy Tính',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}