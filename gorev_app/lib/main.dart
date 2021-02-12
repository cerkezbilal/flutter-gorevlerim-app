import 'package:flutter/material.dart';
import 'package:gorev_app/ekranlar/gorevler_ekran.dart';
import 'package:gorev_app/modeller/gore_veri.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context){
        return GorevVeri();
      },
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: GorevlerEkran(),
        ),
    );
  }
}


