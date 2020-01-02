import 'package:validators/validators.dart';

class ValidationMixins {
  String validateEmail(String value) {
    value = value.trim();
    if (!isEmail(value) && value.length == 0) {
      return "Please enter valid email address.";
    } else {
      return null;
    }
  }

  String validatePassword(String value) {
    if (value.length == 0) {
      return "Please enter valid password.";
    } else if (value.contains(' ')) {
      return "Password should not contain whitespaces.";
    } else {
      return null;
    }
  }

}