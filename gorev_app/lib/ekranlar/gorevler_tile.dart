import 'package:flutter/material.dart';

class GorevTile extends StatelessWidget {

 final bool secim;
 final String gorevAd;
 final Function chechboxCallBack;
 final Function listTileLongPress;

 GorevTile({this.gorevAd,this.secim,this.chechboxCallBack, this.listTileLongPress});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(gorevAd,
          style: TextStyle(
            color: Colors.white,
            decoration: secim ? TextDecoration.lineThrough:null,
          ),
        ),
      trailing: Checkbox(
        value: secim,
        onChanged: chechboxCallBack,
        activeColor: Colors.red,
      ),
      onLongPress: listTileLongPress,
    );
  }
}


