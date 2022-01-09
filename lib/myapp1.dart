import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/navbar.dart';

import 'LoaiMTPage.dart';
import 'MT_page.dart';
import 'Models/LoaiMayTinh.dart';

class MyApp1 extends StatelessWidget{
  LoaiMT loaiMT;
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Quản Lý Cửa Hàng Máy Tính',
      initialRoute: '/',
      routes: {
        '/MTPage': (context) => MTPage(loaiMT: this.loaiMT),
        '/LoaiMTPage': (context) => LoaiMTPage()
      },
      home: Scaffold(
        drawer: Navbar(),
        appBar: AppBar(
          title: const Text('Loại Máy Tính'),
        ),
        body: SafeArea(
          child: LoaiMTPage(),
        ),
      ),
    );
  }
}