import 'package:flutter/material.dart';
import 'package:ineredu/widgets/menus.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            textAlign: TextAlign.center,
            "Settings",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
          // Account Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Account',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue)),
          ),
          ListTile(
            title: Text('Edit Profile'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Aksi ketika Edit Profile ditekan
            },
          ),
          ListTile(
            title: Text('Password'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Aksi ketika Password ditekan
            },
          ),
          ListTile(
            title: Text('Language'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Aksi ketika Language ditekan
            },
          ),
          Divider(),

          // Preferences Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Preferences',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue)),
          ),
          ListTile(
            title: Text('Theme'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Aksi ketika Theme ditekan
            },
          ),
          ListTile(
            title: Text('Notifications'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Aksi ketika Notifications ditekan
            },
          ),
          ListTile(
            title: Text('Attendance'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Aksi ketika Attendance ditekan
            },
          ),
          Divider(),

          // Support Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Support',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue)),
          ),
          ListTile(
            title: Text('Terms of Service & Privacy'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Aksi ketika Terms of Service & Privacy ditekan
            },
          ),
          ListTile(
            title: Text('Clear Cache'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Aksi ketika Clear Cache ditekan
            },
          ),

          
        ],

      ),
    );
  }
}