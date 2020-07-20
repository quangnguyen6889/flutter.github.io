import 'package:flutter/material.dart';
import 'package:visa/pages/account/account.dart';
import 'package:visa/pages/giao_dich/giao_dich.dart';
import 'package:visa/pages/home/home_page.dart';
import 'package:visa/pages/notification/notification.dart';
import 'package:visa/pages/qr/qr_page.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _currentIndex = 0;
  Color _color = Color(0xffC4C4C4);

  final tabs = [
    HomePage(),
    GiaoDichPage(),
    QRPage(),
    NotificationPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff5289F4),
        selectedIconTheme: IconThemeData(color: Color(0xff89B9F6)),
        items: [
          BottomNavigationBarItem(
            // icon: Icon(Icons.home),
            icon: ImageIcon(
              AssetImage('assets/icons/home.png'),
              color: _color,
            ),
            title: Text(
              'Trang chủ',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/giao_dich.png'),
              color: _color,
            ),
            title: Text(
              'Giao dịch',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/qr.png'),
              color: _color,
            ),
            title: Text(
              'QR',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/thong_bao.png'),
              color: _color,
            ),
            title: Text(
              'Thông báo',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/tai_khoan.png'),
              color: _color,
            ),
            title: Text(
              'Tài khoản',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            // _currentIndex._color
            // _color = Color(0xff89B9F6);
          });
        },
      ),
    );
  }
}
