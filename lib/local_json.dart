import 'package:flutter/material.dart';
import 'dart:convert';

class LocalJson extends StatefulWidget {
  @override
  _LocalJsonState createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  @override
  Widget build(BuildContext context) {
    veriKaynaginiOku();
    return Scaffold(
      appBar: AppBar(title: Text("Local Json Kullanımı"),),
      body: Container(
        child: Center(
          child: Text("aaaa"),
        ),
      ),
    );
  }


  veriKaynaginiOku() async {


//    Future<String> jsonOku =DefaultAssetBundle.of(context).loadString("assets/data/araba.json");
//    jsonOku.then((okunanJson){
//
//      debugPrint("gelen json :" +okunanJson);
//      return okunanJson;
//    });

  var gelenJson=await DefaultAssetBundle.of(context).loadString("assets/data/araba.json");

    List arabaListesi= json.decode(gelenJson.toString());
    debugPrint("toplam araba sayısı :" +arabaListesi.length.toString());


  }
}
