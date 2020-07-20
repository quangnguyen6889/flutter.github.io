import 'package:flutter/material.dart';
import 'package:visa/pages/giao_dich/gd_thanh_cong.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class XacThuc extends StatefulWidget {
  @override
  _XacThucState createState() => _XacThucState();
}

class _XacThucState extends State<XacThuc> {
  String currentText = "";
  TextEditingController textEditingController = TextEditingController()
    ..text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff6592F2),
      appBar: AppBar(
        title: Text('Xác thực'),
        centerTitle: true,
        backgroundColor: Color(0xff6592F2),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: 200,
              color: Color(0xff6592F2),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.fromLTRB(0, 137, 0, 0),
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xfff9f9f9),
                // color: Colors.amber,
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
                  Text(
                    'Nhập mã OTP được gửi vào số điện thoại của bạn',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff323232),
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    // color: Colors.red,
                    // child: Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: <Widget>[
                    //     Expanded(
                    //       child: Container(
                    //         height: 50,
                    //         margin: EdgeInsets.symmetric(horizontal: 14),
                    //         decoration: BoxDecoration(
                    //           color: Colors.grey[200],
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(8)),
                    //         ),
                    //       ),
                    //     ),
                    //     Expanded(
                    //       child: Container(
                    //         height: 50,
                    //         margin: EdgeInsets.symmetric(horizontal: 14),
                    //         decoration: BoxDecoration(
                    //           color: Colors.grey[200],
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(8)),
                    //         ),
                    //       ),
                    //     ),
                    //     Expanded(
                    //       child: Container(
                    //         height: 50,
                    //         margin: EdgeInsets.symmetric(horizontal: 14),
                    //         decoration: BoxDecoration(
                    //           color: Colors.grey[200],
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(8)),
                    //         ),
                    //       ),
                    //     ),
                    //     Expanded(
                    //       child: Container(
                    //         height: 50,
                    //         margin: EdgeInsets.symmetric(horizontal: 14),
                    //         decoration: BoxDecoration(
                    //           color: Colors.grey[200],
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(8)),
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // ),
                    child: PinCodeTextField(
                      length: 4,
                      obsecureText: false,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        fieldHeight: 50,
                        fieldWidth: 50,
                        activeFillColor: Colors.white,
                      ),
                      animationDuration: Duration(milliseconds: 300),
                      // backgroundColor: Colors.blue.shade50,
                      enableActiveFill: true,
                      // errorAnimationController: errorController,
                      controller: textEditingController,
                      onCompleted: (v) {
                        print("Completed");
                      },
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Gửi lại mã OTP sau: ',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xffa1a1a1)),
                      ),
                      Text(
                        '01:24',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4E86F3)),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
// Button Xác thực
                  SizedBox(
                    width: double.infinity,
                    height: 44,
                    child: RaisedButton(
                      onPressed: _gdThanhCong,
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
    );
  }

  void _gdThanhCong() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => GDThanhCong()));
  }
}
