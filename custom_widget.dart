import 'package:flutter/material.dart';



class CustomWid extends StatelessWidget {
  final String title;
  final data;
  
  
  const CustomWid({Key? key, required this.title, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 100,
            child: Text(title),
          ),
          const SizedBox(width: 10),
          Container(
            width: 160,
            child: Text(data),
          )
        ],
      ),
    );
  }
}
