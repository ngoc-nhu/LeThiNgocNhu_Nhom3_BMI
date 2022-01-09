import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/ChiTietMT.dart';
import 'package:flutter_bmi_calculator/Models/LoaiMayTinh.dart';
import 'package:flutter_bmi_calculator/Models/MayTinh.dart';
import 'package:flutter_bmi_calculator/fake_data.dart';
class MTPage extends StatelessWidget {
  static const String routeName = '/MTPage';
   LoaiMT loaiMT;
  MTPage({ this.loaiMT});
  @override
  Widget build(BuildContext context) {
    Map<String, LoaiMT> arguments = ModalRoute.of(context).settings.arguments;
    this.loaiMT = arguments['LoaiMT'];
    //Filter foods of from category
    List<MayTinh> maytinh = Fake_MayTinh.where((MayTinh) => MayTinh.idloai== this.loaiMT.id).toList();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông Tin ${loaiMT.tenloai}'),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: maytinh.length,
            itemBuilder: (context, index) {
              //We will continue in the next lesson
              MayTinh mt = maytinh[index];
              return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => ChiTietMTPage(mt: mt)//send params using "constructor"
                        )
                    );
                  },
                  child:  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          clipBehavior: Clip.hardEdge,
                          child: Center(
                            child: FadeInImage.assetNetwork(
                                placeholder: 'assets/images/loading.gif',
                                image: mt.urlimage
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 30,right: 30,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(10),

                          ),
                          child: Text('${mt.tenmaytinh}',
                            style: TextStyle(fontSize: 30, color: Colors.white),),
                        ),
                      ),
                    ],
                  ));
            }
        ),
      )
    );
  }
}