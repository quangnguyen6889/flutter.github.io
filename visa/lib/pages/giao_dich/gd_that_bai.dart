import 'package:flutter/material.dart';
import './../tabs/tabs.dart';

class GDThatBai extends StatefulWidget {
  @override
  _GDThatBaiState createState() => _GDThatBaiState();
}

class _GDThatBaiState extends State<GDThatBai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Giao dịch thất bại',
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
        // color: Colors.lightBlueAccent,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: <Widget>[
            SizedBox(height: 36),
            Image.asset('assets/images/fail.png'),
            SizedBox(height: 60),
            Text(
              'Chuyển khoản thất bại !',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff2e2e2e),
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Đã có lỗi xảy ra trong quá trình chuyển khoản. Vui lòng chuyển khoản lại sau một vài phút nữa.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Color(0xffa1a1a1)),
            ),
            SizedBox(height: 179),
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
        context, MaterialPageRoute(builder: (context) => TabsPage()));
  }
}
