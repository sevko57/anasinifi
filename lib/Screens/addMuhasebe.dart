import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddMuhasebe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Muhasebe",
            style: TextStyle(color: Colors.amberAccent),
          ),
        ),
        

       body: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10.0)),
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: const <Widget>[
              
              Text("Aylık Geliriniz : 47990 ₺"),
              Text("Öğrenci Başı Geliriniz : 4790 ₺"),
            ],
          ),
        ),
         
       );
  }
  

}
