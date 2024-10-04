import 'package:flutter/material.dart';
import 'package:ineredu/pages/SignUp_page.dart';
import 'package:ineredu/widgets/custom_texfield.dart';
import 'package:ineredu/widgets/navbar.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              height: 160,
            ),
            // Logo Ineredu
            Center(
              child: Text(
                "InerEdu",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Kanit',
                  color: Color.fromARGB(255, 23, 132, 221),
                  fontWeight: FontWeight.bold,
                  fontSize: 38,
                ),
              ),
            ),
            const SizedBox(
              height: 95,
            ),

            // Input Email
            CustomTexfield(
              controller: emailController,
              textInputType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              hint: "Email Address",
              prefixIconData: Icons.email_outlined,
            ),

            const SizedBox(
              height: 25,
            ),

            // Input Password
            CustomTexfield(
              controller: passwordController,
              textInputType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              hint: "Password",
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
              height: 75,
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
                    "Sign In",
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Belum Punya Akun ?",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,

                  ),
                ),
                const SizedBox(width: 5,),
                InkWell(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const SignupPage();
                    })),
                  child: Text(
                    "Sign Up Now",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 76, 255),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )

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
