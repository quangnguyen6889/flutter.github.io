import 'package:Container/src/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:Container/src/resource/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginBloc bloc = new LoginBloc();

  bool _show = false;
  TextEditingController _userNameController = new TextEditingController();
  TextEditingController _passWordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        color: Colors.white,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Container(
                    width: 70,
                    height: 70,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xfff1f1f1)),
                    child: FlutterLogo()),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child: Text(
                  "Hello\nWellcome back",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: StreamBuilder(
                    stream: bloc.userStream,
                    builder: (context, snapshot) => TextField(
                      controller: _userNameController,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                          labelText: "Username",
                          errorText: snapshot.hasError ? snapshot.error : null),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      StreamBuilder(
                        stream: bloc.passStream,
                        builder: (context, snapshot) => TextField(
                          controller: _passWordController,
                          obscureText: !_show,
                          style: TextStyle(fontSize: 18),
                          decoration: InputDecoration(
                              labelText: "Password",
                              errorText:
                                  snapshot.hasError ? snapshot.error : null),
                        ),
                      ),
                      GestureDetector(
                        onTap: showPassword,
                        child: Text(
                          _show ? "HIDE" : "SHOW",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    onPressed: signIn,
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              Container(
                  height: 130,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "NEW USER? SIGN UP",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff888888)),
                      ),
                      Text(
                        "FORGOT PASSWORD?",
                        style: TextStyle(fontSize: 15, color: Colors.blue),
                      )
                    ],
                  ))
            ]),
      ),
    );
  }

  void showPassword() {
    setState(() {
      _show = !_show;
    });
  }

  void signIn() {
    if (bloc.isValidInfo(_userNameController.text, _passWordController.text)) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }
}
