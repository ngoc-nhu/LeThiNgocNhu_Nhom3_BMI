import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/Models/LoaiMayTinh.dart';
import 'package:flutter_bmi_calculator/Models/MayTinh.dart';
class ChiTietMTPage extends StatelessWidget {
  MayTinh mt;

  ChiTietMTPage({this.mt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('${mt.tenmaytinh}'),),
        body: Column(
          children: <Widget>[
            Center(
              child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/loading.gif',
                  image: mt.urlimage
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text('Chi Tiết Máy Tính',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
            ),
            // Text('Mã loại sách ${book.categoryId}',style: TextStyle(fontSize: 19,color: Colors.black),),
            Expanded(
                child: ListView.builder(
                    itemCount: this.mt.ingredients.length,
                    itemBuilder: (context, index) {
                      String ingredient = this.mt.ingredients[index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text('${index + 1}', style: TextStyle(
                              fontSize: 19, color: Colors.black),),
                        ),
                        title: Text(
                          ingredient, style: TextStyle(fontSize: 22),),
                      );
                    }
                )
            )
          ],
        )
    );
  }
}