import 'package:flutter/material.dart';
import 'package:ineredu/pages/SignUp_page.dart';
import 'package:ineredu/widgets/custom_texfield.dart';
import 'package:ineredu/widgets/custom_texfield2.dart';
import 'package:ineredu/widgets/navbar.dart';

class EditPhone extends StatefulWidget {
  const EditPhone({super.key});

  @override
  State<EditPhone> createState() => _EditPhoneState();
}

class _EditPhoneState extends State<EditPhone> {
    final phoneController = TextEditingController();
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
                  "Edit Phone",
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

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.left,
                  "No Handphone",
                  style: TextStyle(
                        fontFamily: 'Poppins-bold',
                        color: Color.fromARGB(255, 0, 7, 13),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                ),
              ],
            ),

            const SizedBox(height: 10,),

            // Input Phone
            CustomTexfield2(
              controller: phoneController,
              textInputType: TextInputType.phone,
              textInputAction: TextInputAction.next,
              hint: "Number Phone",
              prefixIconData: Icons.phone_android_outlined,
            ),

            const SizedBox(
              height: 25,
            ),

            const SizedBox(
              height: 475,
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
                    "Simpan",
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
  

