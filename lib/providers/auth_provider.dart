import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier{
  String _number = "";
  String _password = "";
  String _token = "";

  String get getNumber => _number;
  String get getPassword => _password;
  String get getToken => _token;

  set setToken(String value) {
    _token = value;
    notifyListeners();
  }

  set setNumber(String number){
    _number = number;
    notifyListeners();
  }

  set setPassword(String password){
    _password = password;
    notifyListeners();
  }



}