import 'package:flutter_bmi_calculator/MT_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/Models/LoaiMayTinh.dart';
class LoaiMTItem extends StatelessWidget {
  LoaiMT loaiMT;
  LoaiMTItem({ this.loaiMT});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color _color = this.loaiMT.color;
    return InkWell(
      onTap: (){
        print('tapped to category: ${this.loaiMT.tenloai}');
        //Navigate to another page
        //Pages are stored into a Stack, the page you see is the top Page(in the stack)

        /*Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MTPage(loaiMT: this.loaiMT,)//you can send parameters using constructor

            ));*/
        Navigator.pushNamed(context, '/MTPage', arguments: {'LoaiMT': loaiMT});

        //Are there another way to send parameters ? Yes
        //Navigator.pushNamed(context, '/FoodsPage', arguments: {'category': category});
      },
      splashColor: Colors.deepPurple,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Now change font's family from "Google Fonts"
            Text(this.loaiMT.tenloai,
                style: Theme.of(context).textTheme.title),
          ],
        ),

        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  _color.withOpacity(0.8),
                  _color
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft
            ),
            color:_color,
            borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }
}
