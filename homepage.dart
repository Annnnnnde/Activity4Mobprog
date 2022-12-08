import 'package:flutter/material.dart';
import 'package:untitled44/Student.dart';
import 'package:untitled44/details.dart';
import 'package:untitled44/formhandling.dart';


class Homepage extends StatefulWidget {

  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //list of object

  List <Student> names = [
    Student(idNum: 2020300787,
      name: 'Gia Sumagang',
      birthDate: 'August 30 2001',
      course: 'BSIT',
      section: '3R1',
      gender: 'Female'
    )
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Activity #4')),
      body: ListView.builder(
        itemCount: names.length,
          itemBuilder: (context, index)
          {
            final name = names[index];
              return Dismissible(
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                ),
                  key: Key(name.name),
                  child: ListTile(
                    title: Text(name.name),
                    subtitle: Text('${name.course}-${name.section}'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Details(studentkey: name)
                          )
                      );
                    },
                  )
              );
          }
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () async {
            var newName = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Students()
                )
              );

            setState(() {
              names.add(newName);
            });
             },
          ),
        );
  }
}
