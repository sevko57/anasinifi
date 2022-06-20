
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/utilities/constants.dart';

class StudentListRow extends StatelessWidget {
  String name;
  String sinif;
  String dogumT;
  String veliTel;
  String photoUrl;

  StudentListRow(
      {required this.name,
      required this.sinif,
      required this.dogumT,
      required this.veliTel,
      required this.photoUrl});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildStudentItemCard(context),
        _buildStudentItemCard(context),
      ],
    );
  }

  _buildStudentItemCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constants.ROUTE_STUDENT_DETAIL);
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(photoUrl),
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2.2,
            ),
            Row(
              children: <Widget>[
                Text(name,style: TextStyle(color: Colors.black,fontSize: 16,),),
                const SizedBox(width: 8.0,),
                Text(dogumT),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
           
          ],
        ),
      ),
    );
  }
}
