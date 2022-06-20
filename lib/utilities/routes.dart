import 'package:flutter/cupertino.dart';
import 'package:flutter_application_2/Screens/studentDetail.dart';
import 'package:flutter_application_2/Screens/addStudent.dart';
import 'package:flutter_application_2/Screens/addTeacher.dart';
import 'package:flutter_application_2/Screens/addClass.dart';
import 'package:flutter_application_2/Screens/addTerm.dart';
import 'package:flutter_application_2/Screens/addMuhasebe.dart';
import "package:flutter_application_2/utilities/constants.dart";





class Routes{
  static final routes = <String,WidgetBuilder>{
    Constants.ROUTE_STUDENT_DETAIL:(BuildContext context) => StudentDetail(),
    Constants.ROUTE_ADD_STUDENT:(BuildContext context) => AddStudent(),
    Constants.ROUTE_ADD_TEACHER:(BuildContext context) => AddTeacher(),
    Constants.ROUTE_ADD_CLASS:(BuildContext context) => AddClass(),
    Constants.ROUTE_ADD_TERM:(BuildContext context) => AddTerm(),
    Constants.ROUTE_ADD_MUHASEBE:(BuildContext context) => AddMuhasebe(),
  };
}