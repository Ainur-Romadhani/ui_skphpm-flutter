import 'package:flutter/material.dart';
import 'package:skphp_mobile/transaksi/Sulan2.dart';

class Sulan1 extends StatefulWidget {
  @override
  _Sulan1State createState() => _Sulan1State();
}

class _Sulan1State extends State<Sulan1> {
  String _pilihVal;
  List _pilihan = ["Pelayanan", "Pemberontakan"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image(
            image: AssetImage('images/ic_logo_sidiper.webp'),
            height: 500,
          ),
          backgroundColor: Colors.white,
        ),
        body: Stack(
          children: <Widget>[
            Image(
              image: AssetImage("images/bg_icons_sm.webp"),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          // borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                children: [
                                  Text(
                                    "Surat Keterangan Peredaran Hasil",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Perikanan",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "1. Masukkan Data Sebagai",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: null, groupValue: null, onChanged: null),
                      Text("Pemilik"),
                      Radio(value: null, groupValue: null, onChanged: null),
                      Text("Pengirim")
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        width: 500,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/ic_users_male.webp'),
                              width: 50,
                              height: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 80),
                                    child: Text(
                                      "ROMADHANI",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.lightBlue[900],
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          "No.Ktp   : ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.lightBlue[900]),
                                        ),
                                        Text(
                                          "9999999999",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.lightBlue[900]),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Alamat   : ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.lightBlue[900]),
                                        ),
                                        Text(
                                          "Sumenep",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.lightBlue[900]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "2. Masukkan Data Tempat Kejadian",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.blueGrey[100],
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.pin_drop,
                                  color: Colors.grey,
                                ),
                                hintText: "Daerah Asal",
                                hintStyle: TextStyle(
                                    color: Color(0xFF9b9b9b),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: DropdownButton(
                              isExpanded: true,
                              hint: Text("Cari Pelabuhan Muat"),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "3. Masukkan Data Komoditas",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //No 3
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.blueGrey[100],
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 250),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "No.1",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue[300],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  flex: 2,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Jenis Ikan",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Jumlah Ikan",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Harga",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //3.2
                          Padding(
                            padding: const EdgeInsets.only(right: 250),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "No.2",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue[300],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  flex: 2,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Jenis Ikan",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Jumlah Ikan",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Harga",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //3,3
                          Padding(
                            padding: const EdgeInsets.only(right: 250),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "No.3",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue[300],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  flex: 2,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Jenis Ikan",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Jumlah Ikan",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Harga",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //3.4

                          Padding(
                            padding: const EdgeInsets.only(right: 250),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "No.4",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue[300],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  flex: 2,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Jenis Ikan",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Jumlah Ikan",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Harga",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //3.5

                          Padding(
                            padding: const EdgeInsets.only(right: 250),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "No.5",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue[300],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  flex: 2,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Jenis Ikan",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Jumlah Ikan",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Harga",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //no 4

                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "4. Pilih Jenis Kegiatan",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: null, groupValue: null, onChanged: null),
                      Text("Budidaya"),
                      Radio(value: null, groupValue: null, onChanged: null),
                      Text("Tangkap")
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.blueGrey[100],
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.cake,
                                  color: Colors.grey,
                                ),
                                hintText: "No. SIUP Budidaya",
                                hintStyle: TextStyle(
                                    color: Color(0xFF9b9b9b),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //no 5

                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "5. Jalur Pengiriman",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: null, groupValue: null, onChanged: null),
                      Text("Darat"),
                      Radio(value: null, groupValue: null, onChanged: null),
                      Text("laut"),
                      Radio(value: null, groupValue: null, onChanged: null),
                      Text("Udara")
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.blueGrey[100],
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.date_range,
                                  color: Colors.grey,
                                ),
                                hintText: "Tanggal Pengiriman",
                                hintStyle: TextStyle(
                                    color: Color(0xFF9b9b9b),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.car_rental,
                                  color: Colors.grey,
                                ),
                                hintText: "Ekspedisi",
                                hintStyle: TextStyle(
                                    color: Color(0xFF9b9b9b),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //6

                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "6. Data Penerima",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: null, groupValue: null, onChanged: null),
                      Text("Baru"),
                      Radio(value: null, groupValue: null, onChanged: null),
                      Text("Lama"),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.blueGrey[100],
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.group,
                                  color: Colors.grey,
                                ),
                                hintText: "Nama Penerima",
                                hintStyle: TextStyle(
                                    color: Color(0xFF9b9b9b),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.home,
                                  color: Colors.grey,
                                ),
                                hintText: "Alamat Penerima",
                                hintStyle: TextStyle(
                                    color: Color(0xFF9b9b9b),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: null),
                              Text(
                                "Simpan Ke Database",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        // borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Column(
                              children: [
                                Text(
                                  "Isikan data sesuai dengan kegiatan perikanan",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                  ),
                                ),
                                Text(
                                  "yang anda kirim.Dinas Perikanan Sumenep",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                  ),
                                ),
                                Text(
                                  "akan melakukan otorisasi dari data yang",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                  ),
                                ),
                                Text(
                                  "sudah anda masukkan",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Padding(
                      padding: EdgeInsets.only(left: 120),
                      child: Row(
                        children: [
                          RaisedButton(
                            onPressed: null,
                            child: Text('BATAL',
                                style: TextStyle(color: Colors.white)),
                            color: Colors.black,
                            disabledColor: Colors.grey,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => Sulan2()));
                              },
                              child: Text('BERIKUTNYA',
                                  style: TextStyle(color: Colors.white)),
                              color: Colors.black,
                              disabledColor: Colors.blueAccent,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10),
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
          ],
        ),
      ),
    );
  }
}
