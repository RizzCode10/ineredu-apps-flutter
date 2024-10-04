import 'package:flutter/material.dart';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ineredu/widgets/card_mapel.dart';

class Dashboard2 extends StatefulWidget {
  const Dashboard2({super.key});

  @override
  State<Dashboard2> createState() => _Dashboard2State();
}

class _Dashboard2State extends State<Dashboard2> {
  final searchController = TextEditingController();
    bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 40,),
            Container(
              child: Row(
              children: [
                  Text(
                    "Perkuliahan",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Poppins-Bold",
                    ),
                  ),
                  const SizedBox(width: 190,),
                  Icon(
                    Icons.notifications,
                    color: const Color.fromARGB(255, 0, 82, 222),
                    size: 24,
                ),

              ],
            ),
            ),

            const SizedBox(height: 20,),

            TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Type something to search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: (text) {
                setState(() {
                  // searchText = text; // Memperbarui teks pencarian
                });
              },
            ),

            const SizedBox(height: 20,),
            
            SingleChildScrollView(
              child: Column(
                children: [
                  CardMapel(
                    title: "Kartu \nHasil Studi", 
                    myImage: Image.asset(
                        "assets/images/analitics.png",
                        width: 200, // Menyebarkan gambar sesuai ruang
                        height: 250, // Memberikan batasan tinggi pada gambar
                        fit: BoxFit.contain, // Menyesuaikan gambar dalam container
                      ),
                    colorCard: const Color.fromARGB(255, 113, 56, 255),
                  ),
                  const SizedBox(height: 30,),
                  CardMapel(
                    title: "Nilai \nMata Kuliah", 
                    myImage: Image.asset(
                        "assets/images/task.png",
                        width: 200, // Menyebarkan gambar sesuai ruang
                        height: 250, // Memberikan batasan tinggi pada gambar
                        fit: BoxFit.contain, // Menyesuaikan gambar dalam container
                      ),
                    colorCard: const Color.fromARGB(255, 255, 192, 32),
                  ),
                  const SizedBox(height: 30,),
                  CardMapel(
                    title: "Jadwal \nMata Kuliah", 
                    myImage: Image.asset(
                        "assets/images/calender.png",
                        width: 200, // Menyebarkan gambar sesuai ruang
                        height: 250, // Memberikan batasan tinggi pada gambar
                        fit: BoxFit.contain, // Menyesuaikan gambar dalam container
                      ),
                    colorCard: const Color.fromARGB(255, 255, 55, 225),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}