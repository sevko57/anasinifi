import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTeacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Öğretmen EKLE",
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
                        "Öğretmenin adı",
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
                        "Doğum Tarihi",
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
                        "Sicili",
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
                        "Telefon Numarası",
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
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: const Text(
                        "Fotoğraf Url",
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
                          "Kayıt Et",
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
