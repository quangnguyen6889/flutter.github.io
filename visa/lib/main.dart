import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
// import 'package:visa/pages/app_localizations.dart';
import 'pages/login/login_page.dart';
import 'pages/tabs/tabs.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(EasyLocalization(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;

    return EasyLocalizationProvider(
      data: data,
      child: MaterialApp(
        locale: data.locale,
        supportedLocales: [
          Locale('en', 'US'),
          Locale('vi', 'VN'),
        ],
        localizationsDelegates: [
          // AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          EasyLocalizationDelegate(
            locale: data.locale,
            path: "lang",
          )
        ],
        home: LoginPage(),
      ),
    );
  }
}
