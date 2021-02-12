import 'package:flutter/material.dart';
import 'gorev.dart';

class GorevVeri with ChangeNotifier{
  List<Gorev> gorevListesi = [
    Gorev(gorevAd: "Spora Git"),
    Gorev(gorevAd: "Programlama Çalış")
  ];

  int get gorevSayisi{
    return gorevListesi.length;
  }
  void gorevEkle(Gorev yeniGorev){
    gorevListesi.add(yeniGorev);
    notifyListeners();
  }

  void gorevGuncelle(Gorev g){
    g.toggleYapildi();
    notifyListeners();
  }
  void gorevSil(Gorev g){
    gorevListesi.remove(g);
    notifyListeners();
  }
}