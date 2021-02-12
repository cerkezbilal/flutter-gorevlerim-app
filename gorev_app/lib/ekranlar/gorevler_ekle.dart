import 'package:flutter/material.dart';
import 'package:gorev_app/modeller/gore_veri.dart';
import 'package:gorev_app/modeller/gorev.dart';
import 'package:provider/provider.dart';

class GorevEkle extends StatefulWidget {


  @override
  _GorevEkleState createState() => _GorevEkleState();
}

class _GorevEkleState extends State<GorevEkle> {

  String yeniGorev;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff481414),
      child: Container(
        padding: EdgeInsets.all(50),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Görev Ekle",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.redAccent.shade100,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (val){
                yeniGorev = val;
              },
            ),
            SizedBox(height: 40,),
            FlatButton(
                onPressed: (){
                  //widget.gorevEkle(yeniGorev);
                  Provider.of<GorevVeri>(context, listen: false).gorevEkle(Gorev(gorevAd: yeniGorev));
                  Navigator.pop(context);
                },
                child: Text("Ekle",
                style: TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.normal),
                ),
            color: Colors.black87,
            )
          ],
        ),
      ),
    );
  }
}
