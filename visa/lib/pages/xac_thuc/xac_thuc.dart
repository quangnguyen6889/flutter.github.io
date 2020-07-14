import 'package:flutter/material.dart';

class XacThuc extends StatefulWidget {
  @override
  _XacThucState createState() => _XacThucState();
}

class _XacThucState extends State<XacThuc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6592F2),
      appBar: AppBar(
        title: Text('Xác thực'),
        centerTitle: true,
        backgroundColor: Color(0xff6592F2),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              SizedBox(
                height: 203,
              ),
// Phần Tab bar bottom
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.fromLTRB(0, 137, 0, 0),
                width: double.infinity,
                height: 494,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xfff9f9f9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
              ),

// Phần Form Xác thực
              Container(
                height: 404,
                margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
                padding: EdgeInsets.fromLTRB(16, 36, 16, 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.12),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/xac_thuc.png',
                      // width: 115,
                      height: 80,
                    ),
                    SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Nhập mã OTP được gửi vào số điện thoại của bạn',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff323232),
                          ),
                        ),
                      ],
                    ),
// Button Xác thực
                    SizedBox(
                      width: double.infinity,
                      height: 44,
                      child: RaisedButton(
                        onPressed: null,
                        color: Color(0xff1F69F6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Text(
                          'Xác thực',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ), //`Text` to display
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
