import 'package:flutter/material.dart';
import 'package:visa/pages/qr/yc_thanh_toan.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết mã QR'),
        centerTitle: true,
        backgroundColor: Color(0xff1F68F4),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 54,
            color: Color(0xff1F68F4),
          ),
          Container(
            width: double.infinity,
            // height: 500,
            // color: Colors.red,
            margin: EdgeInsets.only(top: 123),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  // margin: EdgeInsets.only(bottom: 24),
                  child: Text(
                    'Đến',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
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
                      'Manwah Hotpot',
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
                      'Điểm bán',
                      style: TextStyle(fontSize: 14, color: Color(0xff888888)),
                    ),
                    Text(
                      'VVM HN84',
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
                      'Mã điểm bán',
                      style: TextStyle(fontSize: 14, color: Color(0xff888888)),
                    ),
                    Text(
                      '0054',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff323232)),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Hóa đơn',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 44,
                  padding: EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                    color: Color(0xffe9e9e9),
                    // color: Colors.blue[100],
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: Text('15604000452392'),
                ),
                SizedBox(height: 8),
                Container(
                  alignment: Alignment.topLeft,
                  height: 88,
                  padding: EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                    // color: Color(0xfff7f6f6),
                    color: Color(0xffe9e9e9),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Nội dung',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        // height: 21,
                        color: Color(0xffa1a1a1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: RaisedButton(
                    onPressed: yc_thanh_toan,
                    color: Color(0xff1F68F4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Text(
                      'Thanh toán',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ), //`Text` to display
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
// Thông tin tài khoản
          Container(
            width: double.infinity,
            height: 107,
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(16),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Chuyển từ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Thay đổi',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff5289f4)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Tài khoản:',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff888888)),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Số dư:',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff888888)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        '1014686229',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '15.200.000 VND',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
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

  void yc_thanh_toan() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => YCThanhToan()));
  }
}
