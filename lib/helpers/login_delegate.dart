import 'package:agriculturapp/screens/expenses_screen.dart';
import 'package:agriculturapp/screens/login_screen.dart';
import 'package:agriculturapp/screens/registerExpenses_screen.dart';
import 'package:agriculturapp/screens/registerResource_screen.dart';
import 'package:agriculturapp/screens/registerTypeExpenses.dart';
import 'package:agriculturapp/screens/registerTypeResources.dart';
import 'package:agriculturapp/screens/register_screen.dart';
import 'package:agriculturapp/screens/user_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginDelegate {
  static mudarParaTelaDeRegistro(BuildContext context) {
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (context) => RegisterScreen(),
      ),
    );
  }

  static mudarParaTelaDeLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }

  static mudarParaTelaDeUsuario(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResourcesScreen(),
        ));
  }

  static mudarParaTelaDeCadastrarRecurso(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterResourceScreen(),
      ),
    );
  }

  static mudarParaTelaDeGastos(BuildContext context) {
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (context) => ExpensesScreen(),
      ),
    );
  }

  static mudarParaTelaDeCadastrarGastos(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ExpensesRegister(),
      ),
    );
  }

  static mudarParaTelaDeCadastrarTipoDeGastos(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterTypeScreen(),
      ),
    );
  }

  static mudarParaTelaDeCadastrarTipoDeRecurso(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterTypeScreenResources(),
      ),
    );
  }
}
