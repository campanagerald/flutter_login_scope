import 'package:scoped_model/scoped_model.dart';
import '../validators/login_validator.dart';

class LoginModel extends Model with LoginValidator {
  String _email;
  String _password;

  String get email => _email;
  String get password => _password;

  void setEmail(email) {
    _email = email;
    notifyListeners();
  }

  void setPassword(password) {
    _password = password;
    notifyListeners();
  }
}
