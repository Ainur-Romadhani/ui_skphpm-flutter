import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text("Dinas Perikanan"),
                Text('Kabupaten Sumenep'),
              ],
            ),
            Column(
              children: [
                Text(
                  "|",
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  '2019',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('1.0'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
