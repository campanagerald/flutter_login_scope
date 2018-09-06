import 'package:scoped_model/scoped_model.dart';
import 'login_model.dart';

class AppModel extends Model {
  LoginModel _loginModel = LoginModel();

  LoginModel get loginModel => _loginModel;
}
