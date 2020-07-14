import 'package:flutter/material.dart';
import 'package:visa/pages/xac_thuc/xac_thuc.dart';

class XacNhanGD extends StatefulWidget {
  @override
  _XacNhanGDState createState() => _XacNhanGDState();
}

class _XacNhanGDState extends State<XacNhanGD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Xác nhận giao dịch'),
        centerTitle: true,
        backgroundColor: Color(0xff1F68F4),
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 54,
            color: Color(0xff1F68F4),
          ),
          Container(
            width: double.infinity,
            height: 500,
            // color: Colors.red,
            // color: Color(0xfff7f6f6),
            margin: EdgeInsets.only(top: 54),
            padding: EdgeInsets.fromLTRB(16, 429, 16, 0),
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: double.infinity,
              height: 44,
              child: RaisedButton(
                onPressed: _xacThuc,
                color: Color(0xff1F68F4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                child: Text(
                  'Xác nhận',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ), //`Text` to display
              ),
            ),
          ),
// Xác nhận giao dịch
          Container(
            width: double.infinity,
            height: 451,
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.12),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Xác nhận giao dịch',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2e2e2e),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 22),
                Row(
                  children: <Widget>[
                    Text(
                      'Từ',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2e2e2e)),
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
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xffD7DBE6),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'Đến',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2e2e2e)),
                    ),
                  ],
                ),
                SizedBox(height: 8),
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
                SizedBox(height: 8),
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
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Ngân hàng',
                      style: TextStyle(fontSize: 14, color: Color(0xff888888)),
                    ),
                    Text(
                      'Ngân hàng',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff323232)),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xffD7DBE6),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'Thông tin giao dịch',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2e2e2e)),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Số tiền',
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
                SizedBox(height: 8),
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
                SizedBox(height: 8),
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
                SizedBox(height: 8),
                Row(
                  children: <Widget>[
                    Text(
                      'Tin nhắn',
                      style: TextStyle(fontSize: 14, color: Color(0xff888888)),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: <Widget>[
                    Text(
                      'Happy birthday',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2e2e2e)),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _xacThuc() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => XacThuc()));
  }
}
