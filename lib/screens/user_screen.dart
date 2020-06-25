import 'package:agriculturapp/delegate/login_delegate.dart';
import 'package:flutter/material.dart';

class UserScreen  extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
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
        ],
      ),
    );
  }
}
