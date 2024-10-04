import 'package:flutter/material.dart';
import 'package:ineredu/pages/SignUp_page.dart';
import 'package:ineredu/widgets/custom_texfield.dart';
import 'package:ineredu/widgets/custom_texfield2.dart';
import 'package:ineredu/widgets/navbar.dart';

class EditEmail extends StatefulWidget {
  const EditEmail({super.key});

  @override
  State<EditEmail> createState() => _EditEmailState();
}

class _EditEmailState extends State<EditEmail> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            // Logo Ineredu
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: 17.0,

                ),
                Text(
                  "Edit Email",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins-bold',
                    color: Color.fromARGB(255, 0, 7, 13),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ], 
            ),
            const SizedBox(
              height: 95,
            ),

            // Input Email
            CustomTexfield2(
              controller: emailController,
              textInputType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              hint: "Conan@gmail.com",
              prefixIconData: Icons.email_outlined,
            ),

            const SizedBox(
              height: 25,
            ),

            const SizedBox(
              height: 495,
            ),
            InkWell(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const Navbar();
                    })),
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(7)),
                child: const Center(
                  child: Text(
                    "Terapkan Email",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),

            

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