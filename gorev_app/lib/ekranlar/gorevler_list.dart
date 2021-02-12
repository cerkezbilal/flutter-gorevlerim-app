import 'package:flutter/material.dart';
import 'package:gorev_app/ekranlar/gorevler_tile.dart';
import 'package:gorev_app/modeller/gore_veri.dart';
import 'package:provider/provider.dart';

class GorevListesi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
      return Consumer<GorevVeri>(

          builder: (context,gorevVeri,child){
            return ListView.builder(
                itemCount: gorevVeri.gorevSayisi,
                itemBuilder:(context, index){

                  return GorevTile(
                    gorevAd: gorevVeri.gorevListesi[index].gorevAd,
                    secim:gorevVeri.gorevListesi[index].yapildi,
                    chechboxCallBack: (bool val){
                     gorevVeri.gorevGuncelle(gorevVeri.gorevListesi[index]);
                    },
                    listTileLongPress: (){

                      if(gorevVeri.gorevListesi[index].yapildi == true){
                        gorevVeri.gorevSil(gorevVeri.gorevListesi[index]);
                      }else{
                        Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text("Görev Tamamlanmamış"))
                        );
                      }
                    },
                  );
                }

            );
          },
      );
  }
}
