import 'package:flutter/material.dart';
import './../tabs/tabs.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tin tức',
          style: TextStyle(color: Color(0xff2E2E2E)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xff4380F4)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.grey[400],
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(1.0),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: <Widget>[
            SizedBox(height: 36),
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
