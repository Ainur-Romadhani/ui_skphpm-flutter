import 'package:flutter/material.dart';
import 'package:skphp_mobile/drawer/drawer.dart';
import 'package:skphp_mobile/header.dart';
import 'package:skphp_mobile/qrCode.dart';
// import 'package:skphp_mobile/footer.dart';

class Pengaduan extends StatefulWidget {
  @override
  _PengaduanState createState() => _PengaduanState();
}

class _PengaduanState extends State<Pengaduan> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  String _pilihVal;
  List _pilihan = ["Pelayanan", "Pemberontakan"];

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
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Header(),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 200),
                                    child: Text("Pilih Pengajuan"),
                                  ),
                                  DropdownButton(
                                    isExpanded: true,
                                    hint: Text("Pilih Pengaduan"),
                                    value: _pilihVal,
                                    items: _pilihan.map((value) {
                                      return DropdownMenuItem(
                                        child: Text(value),
                                        value: value,
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        _pilihVal = value;
                                      });
                                    },
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Isi Pengaduan',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelText: 'Isi',
                                    ),
                                    maxLines: 5,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 100),
                                      child: Row(
                                        children: [
                                          RaisedButton(
                                            onPressed: null,
                                            child: Text('BATAL',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                            color: Colors.black,
                                            disabledColor: Colors.grey,
                                            shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(10),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: RaisedButton(
                                              onPressed: null,
                                              child: Text('KIRIM',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                              color: Colors.black,
                                              disabledColor: Colors.blueAccent,
                                              shape: new RoundedRectangleBorder(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        10),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Image(
                          image: AssetImage('images/bg_icons_sm.webp'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
