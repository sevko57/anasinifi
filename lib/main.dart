import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/studentsList.dart';
import 'package:flutter_application_2/utilities/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ana sınıfı',
      theme: ThemeData(
      
        primarySwatch: Colors.amber,
      ),
      home:  StudentList(),
      routes: Routes.routes,
    );
  }
}

