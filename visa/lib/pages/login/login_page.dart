import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';
import 'package:flutter/material.dart';
// import 'package:visa/pages/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'login2.dart';
import './../tabs/tabs.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var dataLocal = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: dataLocal,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(2.0),
          child: AppBar(
            backgroundColor: Color(0xff6592F2),
            automaticallyImplyLeading: false,
            elevation: 0,
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 203,
                  color: Color(0xff6592F2),
                ),
// Phần Tab bar bottom
                Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.fromLTRB(0, 187, 0, 0),
                  width: double.infinity,
                  height: 494,
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
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
                      Expanded(
                        child: Container(
                          height: 60,
                          child: FlatButton(
                            onPressed: () => {},
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/qr.png'),
                                  color: Color(0xff5289F4),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  'QR pay',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff444444),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
// ATM
                      Expanded(
                        child: Container(
                          height: 60,
                          child: FlatButton(
                            onPressed: () => {},
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/atm.png'),
                                  color: Color(0xff5289F4),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  'ATM',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff444444),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
// Đặt vé
                      Expanded(
                        child: Container(
                          height: 60,
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                dataLocal.changeLocale(
                                    locale: Locale("vi", "VN"));
                              });
                            },
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/ticket.png'),
                                  color: Color(0xff5289F4),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  // AppLocalizations.of(context)
                                  //     .translate('orderTicket'),
                                  tr('orderTicket'),
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff444444),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
// Hỗ trợ
                      Expanded(
                        child: Container(
                          height: 60,
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                dataLocal.changeLocale(
                                    locale: Locale("en", "US"));
                              });
                            },
                            child: Column(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage('assets/icons/support.png'),
                                  color: Color(0xff5289F4),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  // AppLocalizations.of(context)
                                  //     .translate('support'),
                                  tr('support'),
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff444444),
                                  ),
                                ),
                              ],
                            ),
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
                            // hintText: AppLocalizations.of(context)
                            //     .translate('username'),
                            hintText: tr('username'),
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
                            // hintText: AppLocalizations.of(context)
                            //     .translate('password'),
                            hintText: tr('password'),
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
                          icon: Image.asset(
                            "assets/icons/TouchID.jpg",
                          ),
                          label: Text(''),
                          onPressed: () {},
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: Text(
                            tr('login'),
                            // AppLocalizations.of(context).translate('login'),
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
                            // AppLocalizations.of(context).translate('forgot'),
                            tr('forgot'),
                            style: TextStyle(
                              color: Color(0xff4380F4),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LogIn2()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),

// Phần Đăng ký tài khoản
                Container(
                  height: 87,
                  margin: EdgeInsets.only(top: 681),
                  color: Color(0xff5DC9A0),
                  alignment: Alignment.topCenter,
                  child: FlatButton(
                    child: Text(
                      // AppLocalizations.of(context).translate('signup'),
                      tr('signup'),
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
      ),
    );
  }

  void signIn() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TabsPage()));
  }
}
