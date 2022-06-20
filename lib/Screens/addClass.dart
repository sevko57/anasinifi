import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Sınıf EKLE",
            style: TextStyle(color: Colors.amberAccent),
          ),
        ),
         body: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: const Text(
                        "Sınıfın adı",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20.0, top: 20.0),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: const Text(
                        "Kaçıncı Kademe",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20.0, top: 20.0),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: const Text(
                        "Öğretmeni",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20.0, top: 20.0),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: const Text(
                        "Sınıf Kodu",
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.only(right: 20.0, top: 20.0),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      child: RaisedButton(
                        onPressed: () {
                          print("Giriş Yapıldı");
                        },
                        color: Colors.blueAccent,
                        child: const Text(
                          "Sınıfı Oluştur",
                          style: const TextStyle(color: Colors.black,fontSize: 16),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
       );
  }
}
