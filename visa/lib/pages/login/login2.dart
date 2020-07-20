import 'package:flutter/material.dart';

class LogIn2 extends StatefulWidget {
  @override
  _LogIn2State createState() => _LogIn2State();
}

class _LogIn2State extends State<LogIn2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(1.0),
        child: AppBar(
          backgroundColor: Color(0xff6592F2),
          automaticallyImplyLeading: false,
          elevation: 0,
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200,
              color: Color(0xff6592F2),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(top: 187),
              width: double.infinity,
              height: 300,
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                // color: Color(0xfff9f9f9),
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Text('data'),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
