import 'package:flutter/material.dart';
import 'package:ineredu/pages/edit_email.dart';
import 'package:ineredu/pages/edit_passwrod.dart';
import 'package:ineredu/pages/edit_phone.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: ListView(
      children: [
        Container(
          color: Colors.white,
        child: Column(
          children: [
            // Box untuk jam dan jadwal
            Container(
              width: 490,
              height: 350,
              // padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 14, 139, 242),
                      const Color.fromARGB(255, 115, 220, 246)
                    ], // Warna gradient
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(150),
                  )),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        
                          Align(
                            
                            alignment: Alignment.topLeft,
                            child: Padding(
                              
                              padding: const EdgeInsets.only(top: 46.0, left: 16.0), // Memberikan jarak dari tepi layar
                              child: Container(
                                margin: EdgeInsets.only(right: 100),
                                width: 45,
                                height: 55,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2.0,
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0), // Opsional: Memberikan sudut membulat
                                ),
                                padding: const EdgeInsets.all(8.0), 
                                // Padding di dalam Container agar Icon tidak mepet dengan border
                                child: Center(
                                  child: IconButton(
                                    icon: Icon(Icons.arrow_back_ios,),
                                    iconSize: 17.0,
                                    color: Colors.white,
                                    onPressed: () {
                                      // Aksi notifikasi
                                    },
                                  ),
                                  // Opsional: Menentukan warna ikon
                                ),
                              ),
                            ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Text(
                              textAlign: TextAlign.center,
                              "Profile",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                    
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.white
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage(
                          'assets/images/sinichi.jpeg'), // Ganti dengan gambar profil
                    ),
                    
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const EditEmail();
                              })),
                              child: Text(
                                textAlign: TextAlign.center,
                                'Conan@gmail.com ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: "Kanit",
                                ),
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              ' |',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontFamily: "Kanit",
                              ),
                            ),
                            InkWell(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const EditPhone();
                              })),
                              child: Text(
                                textAlign: TextAlign.center,
                                ' +628567473221',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: "Kanit",
                                ),
                              ),
                            ),
                          ],
                    ),
                  ),

                  const SizedBox(height: 30,),

                  
                  


                  // Container(
                  //   child: ListView(
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.all(16.0),
                  //           child: Text(
                  //             'Account',
                  //             style: TextStyle(
                  //               fontWeight: FontWeight.bold,
                  //               color: Colors.blue,
                  //             ),
                  //           ),
                  //         ),
                  //         ListTile(
                  //           title: Text('Edit Profile'),
                  //           trailing: Icon(Icons.arrow_forward_ios),
                  //           onTap: (){
                  //             // Isi sesuai dengan page yang akan di tuju
                  //           },
                  //         ),
                  //         ListTile(
                  //           title: Text('Jabatan'),
                  //           trailing: Icon(Icons.arrow_forward_ios),
                  //           onTap: (){
                  //             // Isi sesuai dengan page yang akan di tuju
                  //           },
                  //         ),
                  //         ListTile(
                  //           title: Text('Perangkat Terdaftar'),
                  //           trailing: Icon(Icons.arrow_forward_ios),
                  //           onTap: (){
                  //             // Isi sesuai dengan page yang akan di tuju
                  //           },
                  //         ),
                  //       ],

        
                  //     ),
                  // )
                  
              
                ],
              ),
            ),

            Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Account',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue)),
                  ),
                  ListTile(
                    title: Text('Change Password'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const EditPasswrod();
                    })),
                  ),
                  ListTile(
                    title: Text('Jabatan'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){

                    },
                  ),
                  ListTile(
                    title: Text('Perangkat Terdaftar'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Aksi ketika Language ditekan
                    },
                  ),
                  Divider(),

          ],
        ),
        )
      ],
      
        
    ),
  );
}
