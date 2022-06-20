import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../widgets/StudentListRow.dart';

class StudentList extends StatelessWidget {
  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Öğrenci Listesi",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 225, 243, 62),
        centerTitle: true,
      ),
      body: _buildStudentListPage(),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Center(
                child: Text('Yılmaz Anaokulu',textAlign: TextAlign.center,)
              ),
            ),
            ListTile(
              title: const Text('Sınıf Ekle'),
              onTap: () {
                 Navigator.of(context).pushNamed(Constants.ROUTE_ADD_CLASS);
              },
            ),
            ListTile(
              title: const Text('Dönem Ekle'),
              onTap: () {
                 Navigator.of(context).pushNamed(Constants.ROUTE_ADD_TERM);
              },
            ),
             ListTile(
              title: const Text('Muhasebe'),
              onTap: () {
                 Navigator.of(context).pushNamed(Constants.ROUTE_ADD_MUHASEBE);
              },
            ),
          ],
        ),
      ),
    );
  }

  _buildStudentListPage() {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return _buildFilterWidgets(screenSize);
          } else if (index == 4) {
            return SizedBox(
              height: 12.0,
            );
          } else {
            return _buildStudentListRow();
          }
        },
      ),
    );
  }

  _buildFilterWidgets(Size screenSize) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      width: screenSize.width,
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildFilterButton("Öğrenci EKLE",1),
              Container(
                color: Colors.black,
                width: 2.0,
                height: 24.0,
              ),
              _buildFilterButton("Öğretmen EKLE",2),
            ],
            ),
        ),
        ),
    );
  }
  
  _buildFilterButton(String title,int but) {
    return InkWell(
      onTap: (){
        if(but == 1){
          Navigator.of(context).pushNamed(Constants.ROUTE_ADD_STUDENT);
        }else{
           Navigator.of(context).pushNamed(Constants.ROUTE_ADD_TEACHER);
        }
        
      },
      child: Row(
        children: <Widget>[
          const Icon(Icons.plus_one_rounded,color: Colors.black),
          const SizedBox(width: 2.0,),
          Text(title)
        ],
      ),
    );
  }
  
  _buildStudentListRow() {
    return StudentListRow(name:"Ahmet Sudak",sinif:"Okyanus",dogumT:"25.08.2010",veliTel: "05559990000",photoUrl:"https://lafmacun.net/wp-content/webp-express/webp-images/uploads/2019/07/ilk-bakista-direk-masallah-dedirten-41-cocuk-fotografi.jpg.webp");
    
  }
}
