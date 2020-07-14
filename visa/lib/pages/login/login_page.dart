import 'package:flutter/material.dart';
import './../home/home_page.dart';
import './../tabs/tabs.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6592F2),
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
                margin: EdgeInsets.fromLTRB(0, 203, 0, 0),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // QR pay
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16),
                      child: FloatingActionButton(
                        heroTag: null,
                        onPressed: null,
                        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                        elevation: 0.0,
                        child: Column(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('assets/icons/qr.png'),
                              color: Color(0xff5289F4),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(
                                'QR pay',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff444444)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // ATM
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16),
                      child: FloatingActionButton(
                        heroTag: null,
                        onPressed: null,
                        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                        elevation: 0.0,
                        child: Column(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('assets/icons/atm.png'),
                              color: Color(0xff5289F4),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(
                                'ATM',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff444444)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Đặt vé
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16),
                      child: FloatingActionButton(
                        heroTag: null,
                        onPressed: null,
                        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                        elevation: 0.0,
                        child: Column(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('assets/icons/ticket.png'),
                              color: Color(0xff5289F4),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(
                                'Đặt vé',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff444444)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Hỗ trợ
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16),
                      child: FloatingActionButton(
                        heroTag: null,
                        onPressed: null,
                        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
                        elevation: 0.0,
                        child: Column(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage('assets/icons/support.png'),
                              color: Color(0xff5289F4),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(
                                'Hỗ trợ',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff444444)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

// Phần Form Login
              Container(
                height: 458,
                margin: EdgeInsets.fromLTRB(15, 60, 15, 0),
                padding: EdgeInsets.fromLTRB(16, 60, 16, 60),
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
                      'assets/images/logo.png',
                      width: 115,
                      height: 36,
                    ),
// Tên đăng nhập
                    Container(
                      alignment: Alignment.center,
                      height: 44,
                      margin: EdgeInsets.fromLTRB(0, 64, 0, 8),
                      padding: EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        color: Color(0xfff7f6f6),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Tên đăng nhập / Số điện thoại',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            // height: 21,
                            color: Color(0xffa1a1a1),
                          ),
                        ),
                      ),
                    ),
// Mật khẩu
                    Container(
                      alignment: Alignment.center,
                      height: 44,
                      margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                      padding: EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        color: Color(0xfff7f6f6),
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Mật khẩu',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xffa1a1a1),
                          ),
                        ),
                      ),
                    ),
// Touch ID
                    Container(
                      alignment: Alignment.center,
                      height: 21,
                      margin: EdgeInsets.fromLTRB(0, 8, 0, 16),
                      child: FlatButton.icon(
                        // color: Colors.red,
                        icon: Image.asset(
                          "assets/icons/TouchID.jpg",
                        ), //`Icon` to display
                        label: Text(''), //`Text` to display
                        onPressed: () {
                          //Code to execute when Floating Action Button is clicked
                          //...
                        },
                      ),
                    ),
// Login Button
                    SizedBox(
                      width: double.infinity,
                      height: 44,
                      child: RaisedButton(
                        onPressed: signIn,
                        color: Color(0xff1F69F6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Text(
                          'Đăng nhập',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ), //`Text` to display
                      ),
                    ),
// Quên mật khẩu
                    Container(
                      height: 21,
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: FlatButton(
                        child: Text(
                          'Quên mật khẩu?',
                          style: TextStyle(
                            color: Color(0xff4380F4),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),

// Phần Đăng ký tài khoản
              Container(
                height: 70,
                margin: EdgeInsets.only(top: 681),
                color: Color(0xff5DC9A0),
                alignment: Alignment.topCenter,
                child: FlatButton(
                  child: Text(
                    'Đăng ký tài khoản',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void signIn() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TabsPage()));
  }
}
