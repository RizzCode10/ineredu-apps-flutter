import 'package:flutter/material.dart';
import 'package:ineredu/widgets/navbar.dart';

class NotifPage extends StatefulWidget {
  const NotifPage({super.key});

  @override
  State<NotifPage> createState() => _NotifPageState();
}

class _NotifPageState extends State<NotifPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 160,
            ),
            // Logo Ineredu
             // Logo Ineredu
            Center(
              child: Container(
                child: Image.asset(
                    "assets/images/blue_bel.png",
                    width: 220.0,
                    height: 220.0,
                    fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 80,),
            Center(
              child: Text(
                "Belum Ada Notifikasi",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins-bold',
                  color: Color.fromARGB(255, 0, 27, 85),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            const SizedBox(height: 4,),
            Center(
              child: Text(
                "Jika anda mendapatkan notifikasi dan aktivitas Anda, notifikasi tersebut akan muncul disini",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            const SizedBox(
              height: 95,
            ),


            const SizedBox(
              height: 55,
            ),
            InkWell(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const Navbar();
                    })),
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(16)),
                child: const Center(
                  child: Text(
                    "Back to Home Page",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30,),


            // Container(
            //   height: 350,
            //   width: 300,
            //   decoration: BoxDecoration(
            //     color: const Color.fromARGB(255, 191, 226, 255),
            //     border: Border.all(
            //       color: Colors.blue,  // Warna border diatur menjadi biru
            //       width: 7.0,         // Lebar border (opsional)
            //     ),
            //     borderRadius: BorderRadius.circular(50),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}