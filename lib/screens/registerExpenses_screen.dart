import 'package:flutter/material.dart';

class ExpensesRegister extends StatefulWidget {
  @override
  _ExpensesRegisterState createState() => _ExpensesRegisterState();
}

class _ExpensesRegisterState extends State<ExpensesRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF00C853),
                  Color(0xFF00E676),
                  Color(0xFF69F0AE),
                  Color(0xFFB9F6CA),
                ],
                stops: [0.1, 0.4, 0.7, 0.9],
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Text('Cadastrar Recursos', style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),)
            ],
          ),
        ],
      ),
    );
  }
}
