import 'dart:math';

import 'package:flutter/material.dart';
class MayTinh {
  int id;
  String tenmaytinh;
  String urlimage;
  List<String> ingredients = List<String>();
  int idloai;

  MayTinh({
    @required this.tenmaytinh,
    @required this.urlimage,
    this.ingredients,
    this.idloai,
  })
  {this.id = Random().nextInt(1000);}
}