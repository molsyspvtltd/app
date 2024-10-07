import 'package:flutter/foundation.dart';

class AuthModel extends ChangeNotifier {
  bool _isLoggedIn = false;
  String? _phoneNumber;

  bool get isLoggedIn => _isLoggedIn;
  String? get phoneNumber => _phoneNumber;

  void login(String phoneNumber) {
    _isLoggedIn = true;
    _phoneNumber = phoneNumber;
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    _phoneNumber = null;
    notifyListeners();
  }
}
