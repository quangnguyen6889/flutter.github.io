import 'package:flutter/material.dart';
import 'package:visa/pages/giao_dich/gd_that_bai.dart';
import './../tabs/tabs.dart';

class GDThanhCong extends StatefulWidget {
  @override
  _GDThanhCongState createState() => _GDThanhCongState();
}

class _GDThanhCongState extends State<GDThanhCong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Giao dịch thành công',
          style: TextStyle(color: Color(0xff2E2E2E)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xff4380F4)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        // color: Colors.lightGreenAccent,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: <Widget>[
            SizedBox(height: 36),
            Image.asset('assets/images/success.png'),
            SizedBox(height: 60),
            Text(
              'Chuyển khoản thành công !',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff2e2e2e),
              ),
            ),
            SizedBox(height: 12),
            Text(
              '23/11/2019, 09:30 pm',
              style: TextStyle(fontSize: 14, color: Color(0xff888888)),
            ),
            SizedBox(height: 36),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Tên tài khoản',
                  style: TextStyle(fontSize: 14, color: Color(0xff888888)),
                ),
                Text(
                  'Nguyễn Mai',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff323232)),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Số tài khoản',
                  style: TextStyle(fontSize: 14, color: Color(0xff888888)),
                ),
                Text(
                  '1014686229',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff323232)),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Phí giao dịch',
                  style: TextStyle(fontSize: 14, color: Color(0xff888888)),
                ),
                Text(
                  '0 VND',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff323232)),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Tổng',
                  style: TextStyle(fontSize: 14, color: Color(0xff888888)),
                ),
                Text(
                  '100.000 VND',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff323232)),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Mã giao dịch',
                  style: TextStyle(fontSize: 14, color: Color(0xff888888)),
                ),
                Text(
                  '1560400452392',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff323232)),
                ),
              ],
            ),
            SizedBox(height: 38),
            SizedBox(
              width: double.infinity,
              height: 44,
              child: RaisedButton(
                onPressed: _backHome,
                color: Color(0xff1F69F6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                child: Text(
                  'Quay trở lại trang chủ',
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
    );
  }

  void _backHome() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => GDThatBai()));
  }
}
