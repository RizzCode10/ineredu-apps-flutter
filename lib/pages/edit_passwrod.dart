import 'package:flutter/material.dart';
import 'package:ineredu/pages/SignUp_page.dart';
import 'package:ineredu/widgets/custom_texfield.dart';
import 'package:ineredu/widgets/custom_texfield2.dart';
import 'package:ineredu/widgets/navbar.dart';

class EditPasswrod extends StatefulWidget {
  const EditPasswrod({super.key});

  @override
  State<EditPasswrod> createState() => _EditPasswrodState();
}

class _EditPasswrodState extends State<EditPasswrod> {
  final emailController = TextEditingController();
  final oldpasswordController = TextEditingController();
  final newpasswordController = TextEditingController();
  final cpasswordController = TextEditingController();
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
                  "Change Passsword",
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
                  "Old Password",
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

            // Old Password
            CustomTexfield2(
              controller: oldpasswordController,
              textInputType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              hint: "•••••••",
              isObscure: isObsecure,
              hasSuffix: true,
              prefixIconData: Icons.lock_outline,
              onPressed: () {
                setState(() {
                  isObsecure = !isObsecure;
                });
              },
            ),

            const SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.left,
                  "New Password",
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

            // Input new Password
            CustomTexfield2(
              controller: newpasswordController,
              textInputType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              hint: "•••••••",
              isObscure: isObsecure,
              hasSuffix: true,
              prefixIconData: Icons.lock_outline,
              onPressed: () {
                setState(() {
                  isObsecure = !isObsecure;
                });
              },
            ),

            const SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.left,
                  "Confirm Password",
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

            // Confirm Password
            CustomTexfield2(
              controller: cpasswordController,
              textInputType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              hint: "•••••••",
              isObscure: isObsecure,
              hasSuffix: true,
              prefixIconData: Icons.lock_outline,
              onPressed: () {
                setState(() {
                  isObsecure = !isObsecure;
                });
              },
            ),


            const SizedBox(
              height: 255,
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