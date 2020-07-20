import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:visa/pages/qr/qr_detail.dart';
import 'package:visa/pages/tabs/tabs.dart';
// import 'package:qr_code_scanner/qr_scanner_overlay_shape.dart';

class QRPage extends StatefulWidget {
  @override
  _QRPageState createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  GlobalKey qrKey = GlobalKey();
  var qrText = '';
  QRViewController controller;
  bool flashOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR code'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: _backHome,
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: QRView(
                key: qrKey,
                overlay: QrScannerOverlayShape(
                  borderRadius: 10,
                  borderColor: Colors.red,
                  borderLength: 30,
                  borderWidth: 10,
                  cutOutSize: 300,
                ),
                onQRViewCreated: _onQRViewCreate,
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.flash_on),
                  onPressed: () {
                    setState(() {
                      flashOn = !flashOn;
                    });
                    controller.toggleFlash();
                  },
                ),
                // child: Text('Scan result: $qrText'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void _onQRViewCreate(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      if (mounted) {
        controller.dispose();
        qrText = scanData;
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (
              context,
            ) =>
                    QRDetail()));
      }

      // setState(() {
      //   qrText = scanData;
      // });
    });
  }

  void _backHome() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => TabsPage()));
  }
}
