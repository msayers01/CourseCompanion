import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_service.dart';

class LoginViewModel with ChangeNotifier {
  String _email = '';
  String _password = '';
  bool _isLoading = false;

  // Getter for email and password
  String get email => _email;
  String get password => _password;
  bool get isLoading => _isLoading;

  // Setter for email and password that notify listeners (the UI)
  set email(String email) {
    _email = email;
    notifyListeners();
  }

  set password(String password) {
    _password = password;
    notifyListeners();
  }

  // Method to validate email and password
  bool validateFields() {
    // Validation logic here and return true if the data is valid, or false otherwise
    return false;
  }

  // Method to handle the login process
  Future<void> login() async {
    if (validateFields()) {
      _isLoading = true;
      notifyListeners();
      try {
        // Use the login service to send login request
        await LoginService.login(_email, _password);
        // Handle successful login
      } catch (error) {
        // Handle error
      } finally {
        _isLoading = false;
        notifyListeners();
      }
    }
  }
}