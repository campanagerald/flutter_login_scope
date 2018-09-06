class LoginValidator {
  bool _emailValidationStatus = false;
  bool _passwordValidationStatus = false;

  bool get emailValidationStatus => _emailValidationStatus;
  bool get passwordValidationStatus => _passwordValidationStatus;

  String validateEmail(String email) {
    if (email != null) {
      if (!email.contains('@')) {
        _emailValidationStatus = false;
        return 'Enter a valid email';
      } else {
        _emailValidationStatus = true;
      }
    }
  }

  String validatePassword(password) {
    if (password != null) {
      if (password.length < 4) {
        _passwordValidationStatus = false;
        return 'Password must be at least 4 characters';
      } else {
        _passwordValidationStatus = true;
      }
    }
  }

  bool readyToSubmit() {
    if (!emailValidationStatus || !passwordValidationStatus) {
      return false;
    }

    return true;
  }
}
