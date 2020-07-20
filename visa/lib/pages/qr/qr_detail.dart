import 'package:flutter/material.dart';
import 'package:visa/pages/qr/qr_page.dart';

class QRDetail extends StatefulWidget {
  @override
  _QRDetailState createState() => _QRDetailState();
}

class _QRDetailState extends State<QRDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chi tiết mã QR'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: _backQRpage,
          ),
        ),
        body: Center());
  }

  void _backQRpage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => QRPage()));
  }
}
