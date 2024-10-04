import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ineredu/pages/history_page.dart';
import 'package:ineredu/pages/notif_page.dart';
import 'package:ineredu/pages/profile_page.dart';
import 'package:ineredu/pages/settings_page.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final navigationkey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // Tinggi AppBar
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 14, 139, 242),
                  const Color.fromARGB(255, 115, 220, 246)
                ], // Warna gradient
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          elevation: 0, // Hilangkan bayangan
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/sinichi.jpeg'), // Ganti dengan gambar profil
              ),
              SizedBox(width: 10),
              Text(
                'Hello, Shinichi',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: "Kanit",
                ),
              ),
            ],
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                // color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(
                      255, 255, 255, 255), // Warna outline (border)
                  width: 3.0, // Ketebalan outline
                ),
                borderRadius: BorderRadius.circular(
                    10), // Sudut melengkung pada outline (opsional)
              ),
              child: IconButton(
                iconSize: 20,
                icon: Icon(Icons.notifications_outlined),
                onPressed: () {
                  AwesomeDialog(
                      context: context,
                      padding: EdgeInsets.all(10),
                      dialogType: DialogType.info,
                      animType: AnimType.topSlide,
                      showCloseIcon: true,
                      title: "Belum ada Notif!",
                      desc:
                          "Untuk saat ini belum ada notifikasi yang tersedia, jika anda ingin mengecheck nya bisa pilih tombol check",
                      btnCancelOnPress: (){},
                      btnCancelText: "Oke, dimengerti",
                      btnOkOnPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NotifPage()),
                        );
                      },
                      btnOkText: "check",
                      btnOkColor: Colors.blue,
                    ).show();
                },
              ),
            ),
          ],
        ),
      ),

      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            // Box untuk jam dan jadwal
            Container(
              width: 490,
              height: 250,
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
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          '09:41 WIB',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Sabtu, 2 Maret 2024',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 137, 137, 137),
                              fontSize: 10),
                        ),
                        SizedBox(height: 25),
                        Text(
                          'Jadwal Anda Hari Ini',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '08:00 WIB - 16:00 WIB',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Grid untuk tombol-tombol
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Jumlah kolom grid
                crossAxisSpacing: 5, // Jarak antar kolom
                mainAxisSpacing: 5, // Jarak antar baris
                childAspectRatio: 1.0, // Rasio aspek tombol
                padding: EdgeInsets.all(75),

                children: [
                  buildMenuButton(Icons.login, 'Datang', () {
                    AwesomeDialog(
                      context: context,
                      padding: EdgeInsets.all(10),
                      dialogType: DialogType.success,
                      animType: AnimType.topSlide,
                      showCloseIcon: true,
                      title: "Asiaap!",
                      desc:
                          "Terjadi kelasahan, silahkan ulangi proses absensi dengan mscan Wajah di Camera",
                      btnOkOnPress: () {},
                      btnOkText: "Oke, dimengerti",
                      btnOkColor: Colors.blue,
                    ).show();
                  }),
                  buildMenuButton(Icons.logout, 'Pulang', () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.topSlide,
                      showCloseIcon: true,
                      title: "Oops!",
                      desc:
                          "Terjadi kelasahan, silahkan ulangi proses absensi dengan mscan Wajah di Camera",
                      btnOkOnPress: () {},
                      btnOkText: "Oke, dimengerti",
                      btnOkColor: Colors.red,
                    ).show();
                  }),
                  buildMenuButton(Icons.event_note, 'Izin', () {
                    AwesomeDialog(
                      context: context,
                    ).show();
                  }),
                  buildMenuButton(Icons.note, 'Catatan', () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.topSlide,
                      showCloseIcon: true,
                      title: "Oops!",
                      desc:
                          "Terjadi kelasahan, silahkan ulangi proses absensi dengan mscan Wajah di Camera",
                      btnOkOnPress: () {},
                      btnOkText: "Oke, dimengerti",
                      btnOkColor: Colors.red,
                    ).show();
                  }),
                ],
              ),
            ),
            SizedBox(height: 5),
            // Tombol Attendance Using Face ID
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                },
                icon: Icon(
                  Icons.face,
                  color: Colors.white,
                ),
                label: Text(
                  'Attendance Using Face ID',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Mengatur border radius
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      // bottomNavigationBar: CurvedNavigationBar(
      //   key: navigationkey,
      //   backgroundColor: Colors.transparent,
      //   height: 70,
      //   index: index,
      //   color: Colors.blue,
      //   items: [
      //     Icon(
      //       Icons.home,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //     Icon(
      //       Icons.history,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //     Icon(
      //       Icons.settings,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //     Icon(
      //       Icons.person,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //   ], // Ubah index sesuai dengan tab yang aktif
      //   onTap: (index) {},
      // ),
    );
  }

  Widget buildMenuButton(IconData icon, String label, VoidCallback onTap) {
    return Card(
      color: Colors.white,
      elevation: 5,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 25, color: Colors.blue),
            SizedBox(height: 5),
            Text(
              label,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const HistoryPage();
      case 2:
        return const SettingsPage();
      case 3:
        return const ProfilePage();
      default:
        // Mengembalikan Widget default jika index tidak dikenali
        return const HomePage(); // Atau Widget lain yang sesuai
    }
  }
}
