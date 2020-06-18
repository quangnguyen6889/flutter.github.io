import 'dart:async';
import 'package:Container/src/validator/validation.dart';

class LoginBloc {
  StreamController _userController = new StreamController();
  StreamController _passController = new StreamController();

  Stream get userStream => _userController.stream;
  Stream get passStream => _passController.stream;

  bool isValidInfo(String username, String pass) {
    if (!Validation.isValidUser(username)) {
      _userController.sink.addError("Tai khoan khong hop le");
      return false;
    }
    _userController.sink.add("Ok");

    if (!Validation.isValidPass(pass)) {
      _passController.sink.addError("Mat khau phai tren 6 ki tu");
      return false;
    }
    _passController.sink.add("Ok");

    return true;
  }

  void dispose() {
    _userController.close();
    _passController.close();
  }
}
