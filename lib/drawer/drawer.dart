import 'package:flutter/material.dart';
import 'package:skphp_mobile/auth/login.dart';
import 'package:skphp_mobile/dashboard.dart';
import 'package:skphp_mobile/main_menu/pengaduan.dart';
import 'package:skphp_mobile/main_menu/riwayat.dart';
import 'package:skphp_mobile/main_menu/setup.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
            icon: Icons.home,
            text: 'Beranda',
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),
          _drawerItem(
            icon: Icons.assignment,
            text: 'Riwayat Surat Jalan',
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Riwayat()));
            },
          ),
          _drawerItem(
            icon: Icons.volunteer_activism,
            text: 'Pengaduan',
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Pengaduan()));
            },
          ),
          _drawerItem(
            icon: Icons.settings_applications,
            text: 'Pengaturan Akun',
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Setup()));
            },
          ),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Akun",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(
            icon: Icons.logout,
            text: 'Logout',
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Login()));
            },
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
          image: AssetImage('images/ic_users_male.webp'), fit: BoxFit.cover),
    ),
    accountName: Text('HIKEN NO ACE'),
    accountEmail: Text('SUMENEP,KEBUNAGUNG,KEBUNAGUNG'),
  );
}

Widget _drawerItem({IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
