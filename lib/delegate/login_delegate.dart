import 'package:agriculturapp/screens/login_screen.dart';
import 'package:agriculturapp/screens/register_screen.dart';
import 'package:agriculturapp/screens/user_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginDelegate {
  static mudarParaTelaDeRegistro(BuildContext context) {
    Navigator.push(
      context,
      CupertinoPageRoute(builder: (context) => RegisterScreen()),
    );
  }

  static mudarParaTelaDeLogin(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  static mudarParaTelaDeUsuario(BuildContext context) {
    Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => UserScreen(),
        ));
  }
}
