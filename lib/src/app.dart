import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'models/login_model.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<LoginModel>(
      model: LoginModel(),
      child: MaterialApp(
        title: 'Login',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
