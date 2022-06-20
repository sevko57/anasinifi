import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StudentDetailState();
}

class _StudentDetailState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Öğrenci Detayları",
          style: TextStyle(color: Colors.amberAccent),
        ),
      ),
      body: _buildStudentDetails(context),
    );
  }

  _buildStudentDetails(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10.0)),
          padding: EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildStudentImages(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Öğrencinin Adı Soyadı : " + "Ahmet SUDAK",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Öğrencinin Doğum Tarihi : " + "25.08.2010",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Öğrencinin Sınıfı : " + "Okyanus",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Öğrencinin velisini Numarası : " + "05559990000",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _buildStudentImages() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: 250.0,
        child: Center(
          child: Image.network(
              "https://lafmacun.net/wp-content/webp-express/webp-images/uploads/2019/07/ilk-bakista-direk-masallah-dedirten-41-cocuk-fotografi.jpg.webp"),
        ),
      ),
    );
  }
}
