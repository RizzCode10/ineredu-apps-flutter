// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Menus extends StatelessWidget {
  final String title;
  final String subT1;
  final String subT2;
  final String subT3;
  const Menus({
    Key? key,
    required this.title,
    required this.subT1,
    required this.subT2,
    required this.subT3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            title: Text(subT1),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              // Isi sesuai dengan page yang akan di tuju
            },
          ),
          ListTile(
            title: Text(subT2),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              // Isi sesuai dengan page yang akan di tuju
            },
          ),
          ListTile(
            title: Text(subT3),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              // Isi sesuai dengan page yang akan di tuju
            },
          ),
          
          Divider(),
        ],

        
      ),
    );
  }
}
