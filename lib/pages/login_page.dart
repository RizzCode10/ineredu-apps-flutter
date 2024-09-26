import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        padding: EdgeInsets.all(16.0),
        child: Column(
          
          children: [
            
            const SizedBox(height: 160,),
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
            const SizedBox(height: 95,),

            TextField(
              decoration: InputDecoration(
                
                enabledBorder: OutlineInputBorder(
                  
                  borderSide: const BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.email_outlined, color: Colors.grey),
                hintText: "Email Address",

              ),
            ),

            const SizedBox(height: 25,),

            TextField(
              decoration: InputDecoration(
                
                enabledBorder: OutlineInputBorder(
                  
                  borderSide: const BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.lock_outline, color: Colors.grey),
                hintText: "Password",

              ),
            ),
            const SizedBox(height: 75,),
            Container(
              height: 56,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(16)
              ),
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