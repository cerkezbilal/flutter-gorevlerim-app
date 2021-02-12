import 'package:flutter/material.dart';
import 'package:gorev_app/ekranlar/gorevler_ekle.dart';
import 'package:gorev_app/ekranlar/gorevler_list.dart';
import 'package:gorev_app/modeller/gore_veri.dart';
import 'package:provider/provider.dart';

class GorevlerEkran extends StatefulWidget {

  /*
  Widget buildModalSheet(BuildContext context){

    return Container(
      child: Center(
        child: Text("modal sheet"),
      ),
    );
  }*/



  @override
  _GorevlerEkranState createState() => _GorevlerEkranState();
}

class _GorevlerEkranState extends State<GorevlerEkran> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent.shade100,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.red,),
        backgroundColor: Colors.black,
        onPressed: (){
            showModalBottomSheet(context: context, builder:(context)=> GorevEkle());
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60,left: 30,bottom: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.list, size: 30,color: Colors.red,),
                  backgroundColor: Colors.black,
                  radius: 30,
                ),
                SizedBox(height: 30,),
                Text("Görev Yöneticisi",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10,),
                Text("${Provider.of<GorevVeri>(context).gorevSayisi} tane görev var",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: GorevListesi(),
            ),
          ),
        ],
      ) ,
    );
  }
}
