import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled44/Student.dart';


class Students extends StatefulWidget {


  const Students({Key? key}) : super(key: key);

  @override
  State<Students> createState() => _StudentsState();
}

class _StudentsState extends State<Students> {

  TextEditingController idNumController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController courseController = TextEditingController();
  TextEditingController sectionController = TextEditingController();
  TextEditingController genderController = TextEditingController();


  var formkey = GlobalKey<FormState>();
  var gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton (
          icon: const Icon(CupertinoIcons.back), onPressed: () {
            Navigator.pop(context);
        },
        ),
        title: const Text('Add Students'),
      ),
      body: Form(
        key: formkey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children:  [
            TextFormField(
                controller: idNumController ,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    hintText: "Ex. 2020300787",
                    label: Text("ID number")
                ),
                validator: (value) {
                  if (value == ''){
                    return 'Please Enter your ID number';
                  }
                  return null;
                }
            ),
            TextFormField(
              controller: nameController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText: "Ex. Llane",
                label: Text("Name")
              ),
              validator: (value) {
                if (value == ''){
                  return 'Please Enter your Name';
                }
                return null;
              }
            ),
            TextFormField(
                controller: birthDateController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    hintText: "Ex. 12-25-2001",
                    label: Text("Birth Date")
                ),
                validator: (value) {
                  if (value == ''){
                    return 'Please Enter your Name';
                  }
                  return null;
                }
            ),
            TextFormField(
                controller: courseController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    hintText: "Ex. BSIT",
                    label: Text("Course")
                ),
                validator: (value) {
                  if (value == ''){
                    return 'Please Enter your Name';
                  }
                  return null;
                }
            ),
            TextFormField(
                controller: sectionController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    hintText: "Ex. 3R1",
                    label: Text("Section")
                ),
                validator: (value) {
                  if (value == ''){
                    return 'Please Enter your Name';
                  }
                  return null;
                }
            ),
            DropdownButtonFormField(
                items:const [
                  DropdownMenuItem(
                      value:'Male',
                      child: Text('Male')),
                  DropdownMenuItem(
                      value:'Female',
                      child: Text('Female')),
                  DropdownMenuItem(
                      value:'Leave as Unknown',
                      child: Text('Leave as Unknown')),
                ] ,

                onChanged: (value){
                  gender = value!;
                }),


            const SizedBox(height: 20),
            ElevatedButton(
                onPressed:(){
                  if (formkey.currentState!.validate()){
                    var newName = Student(
                      idNum: int.parse(idNumController.text),
                      name: nameController.text,
                      birthDate: birthDateController.text,
                      course: courseController.text,
                      section: sectionController.text,
                      gender: gender
                    );
                    Navigator.pop(context, newName);
                  }

                },
                child:const Text('Submit')
            )
          ],
        ),
      ),
    );
  }
}
