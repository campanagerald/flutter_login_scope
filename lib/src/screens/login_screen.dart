import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../models/login_model.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.only(
              top: 20.0,
            ),
          ),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return ScopedModelDescendant<LoginModel>(
      builder: (BuildContext context, Widget child, LoginModel model) {
        return TextField(
          onChanged: model.setEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: 'you@example.com',
              labelText: 'Email',
              errorText: model.validateEmail(model.email)),
        );
      },
    );
  }

  Widget passwordField() {
    return ScopedModelDescendant<LoginModel>(
      builder: (BuildContext context, Widget child, LoginModel model) {
        return TextField(
          onChanged: model.setPassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: '****',
            labelText: 'Password',
            errorText: model.validatePassword(model.password),
          ),
        );
      },
    );
  }

  Widget submitButton() {
    return ScopedModelDescendant<LoginModel>(
      builder: (BuildContext context, Widget child, LoginModel model) {
        return RaisedButton(
          onPressed: model.readyToSubmit() ? () {} : null,
          child: Text('Submit'),
        );
      },
    );
  }
}
