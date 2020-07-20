import 'package:flutter/material.dart';

class YCThanhToan2 extends StatefulWidget {
  @override
  _YCThanhToan2State createState() => _YCThanhToan2State();
}

class _YCThanhToan2State extends State<YCThanhToan2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yêu cầu thanh toán'),
        centerTitle: true,
        backgroundColor: Color(0xff1F68F4),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.amber,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 34),
              Text(
                'Di chuyển máy ảnh vào vùng mã QR để quét',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Quá trình quét sẽ diễn ra tự động',
                style: TextStyle(fontSize: 14, color: Color(0xffa1a1a1)),
              ),
              SizedBox(height: 16),
              SizedBox(height: 126),
              SizedBox(
                width: double.infinity,
                height: 44,
                child: RaisedButton(
                  onPressed: () {},
                  color: Color(0xff1F68F4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  child: Text(
                    'Lưu mã QR',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ), //`Text` to display
                ),
              ),
              SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                height: 44,
                child: OutlineButton(
                  borderSide: BorderSide(
                    width: 2,
                    color: Color(0xff4380F4),
                  ),
                  onPressed: () {},
                  // color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  child: Text(
                    'Chia sẻ mã QR',
                    style: TextStyle(
                        color: Color(0xff4380F4),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ), //`Text` to display
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
