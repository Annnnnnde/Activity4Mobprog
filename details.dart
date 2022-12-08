import 'package:flutter/material.dart';
import 'Student.dart';
import 'custom_widget.dart';



class Details extends StatelessWidget {
  final Student studentkey;


  const Details({
    required this.studentkey,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(studentkey.name),
      ),
      body:ListView(
          children: [
            CustomWid(title: "ID Number", data: ':  ${studentkey.idNum}'),
            CustomWid(title: "Name", data: ':  ${studentkey.name}'),
            CustomWid(title: "Birthday", data: ':  ${studentkey.birthDate}'),
            CustomWid(title: "Gender", data: ':  ${studentkey.gender}'),
            CustomWid(title: "Year & Section", data: ':  ${studentkey.section}'),
            CustomWid(title: "Course", data: ':  ${studentkey.course}'),

          ],
      ),



      );

  }
}
