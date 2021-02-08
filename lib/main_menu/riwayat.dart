import 'package:flutter/material.dart';
import 'package:skphp_mobile/drawer/drawer.dart';
import 'package:skphp_mobile/header.dart';
import 'package:skphp_mobile/qrCode.dart';

class Riwayat extends StatefulWidget {
  @override
  _RiwayatState createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Image(
            image: AssetImage('images/ic_logo_sidiper.webp'),
            height: 500,
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => QrCode()));
              },
              child: Icon(
                Icons.qr_code,
                color: Colors.grey,
              ),
            ),
          ],
          backgroundColor: Colors.white,
          leading: new IconButton(
            icon: new Icon(
              Icons.drag_handle,
              color: Colors.grey,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
        ),
        drawer: MyDrawer(),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Column(
                children: <Widget>[
                  Header(),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          style: TextStyle(color: Color(0xFF000000)),
                          cursorColor: Color(0xFF9b9b9b),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintText: "Cari Berdasarkan Penerima",
                            hintStyle: TextStyle(
                                color: Color(0xFF9b9b9b),
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
