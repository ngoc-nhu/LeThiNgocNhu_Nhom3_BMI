import 'package:flutter/material.dart';
class LoaiMT
{
  final int id;
  final String tenloai;
  final Color color;
  const LoaiMT({
    @required this.id,
    @required this.tenloai,
    this.color,
});
}