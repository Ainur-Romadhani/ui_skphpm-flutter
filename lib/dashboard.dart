import 'package:flutter/material.dart';
import 'package:skphp_mobile/drawer/drawer.dart';
import 'package:skphp_mobile/header.dart';
import 'package:skphp_mobile/footer.dart';
import 'package:skphp_mobile/qrCode.dart';
import 'package:skphp_mobile/transaksi/sulan1.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.settings_input_antenna),
          onPressed: null,
        ),
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: <Widget>[
              Header(),
              Padding(
                padding: EdgeInsets.zero,
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/bg_icons_sm.webp'),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => Sulan1()));
                            },
                            child: Image(
                              image: AssetImage('images/ic_input.webp'),
                              width: 240,
                              height: 240,
                            ),
                          ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FlatButton(
                                onPressed: () {},
                                child: Image(
                                  image: AssetImage('images/ic_info.webp'),
                                  width: 60,
                                  height: 60,
                                ),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Image(
                                  image: AssetImage('images/ic_lainnya.webp'),
                                  width: 60,
                                  height: 60,
                                ),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Image(
                                  image: AssetImage('images/ic_logout.webp'),
                                  width: 60,
                                  height: 60,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Footer(),
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
