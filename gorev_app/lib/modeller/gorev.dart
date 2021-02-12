class Gorev{

  final String gorevAd;
  bool yapildi;

  Gorev({this.gorevAd,this.yapildi=false});

  void toggleYapildi(){
    yapildi =! yapildi;
  }
}