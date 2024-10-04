import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ineredu/another_page/attendance2.dart';
import 'package:ineredu/another_page/dashboard2.dart';
import 'package:ineredu/another_page/profile2.dart';

import '../pages/history_page.dart';
import '../pages/home_page.dart';
import '../pages/profile_page.dart';
import '../pages/settings_page.dart';

class Navbar2 extends StatefulWidget {
  const Navbar2({super.key});

  @override
  State<Navbar2> createState() => _Navbar2State();
}

class _Navbar2State extends State<Navbar2> {
  final navigationkey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;
  

  final screens = [
    Dashboard2(),
    Attendance2(),
    Profile2(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30, color: Colors.white,),
      Icon(Icons.analytics,  size: 30, color: Colors.white,),
      Icon(Icons.person, size: 30, color: Colors.white,),
    ];
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white),
        ), 
        child: CurvedNavigationBar(
          key: navigationkey,
          backgroundColor: Colors.transparent,
          height: 70,
          index: index,
          color: Colors.blue,
          items: [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.analytics,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            ),
          ], // Ubah index sesuai dengan tab yang aktif
          onTap: (index) => setState(()=> this.index = index),
        ),
      ),
    );
  }
}