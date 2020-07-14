import 'package:flutter/material.dart';
import 'pages/login/login_page.dart';
import 'pages/tabs/tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      // home: TabsPage(),
    );
  }
}
