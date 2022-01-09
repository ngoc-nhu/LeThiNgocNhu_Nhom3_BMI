import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/fake_data.dart';
import 'package:flutter_bmi_calculator/LoaiMT_item.dart';
class LoaiMTPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
      padding: EdgeInsets.all(12),
      children: FAKE_MT.map((eachloai) => LoaiMTItem(loaiMT: eachloai)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
      ),
    );
  }
}