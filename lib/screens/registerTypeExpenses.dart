import 'package:agriculturapp/helpers/login_delegate.dart';
import 'package:flutter/material.dart';

class RegisterTypeScreen extends StatefulWidget {
  @override
  _RegisterTypeState createState() => _RegisterTypeState();
}

class _RegisterTypeState extends State<RegisterTypeScreen> {

  Widget _constroiCadastroNome() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Nome',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ]),
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.dashboard,
                color: Colors.white,
              ),
              hintText: 'Entre com o Nome do Tipo de Gasto',
              hintStyle: TextStyle(color: Colors.white54),
            ),
          ),
        ),
      ],
    );
  }

  Widget _botaoDeRegistrar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Botão de cadastro apertado'),
        padding: EdgeInsets.all(15.0),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        color: Colors.white,
        child: Text(
          'CADASTRAR',
          style: TextStyle(
            color: Color(0xFF00C853),
            letterSpacing: 2.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }



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
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Cadastrar Tipo de Gasto',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  _constroiCadastroNome(),
                  _botaoDeRegistrar(),
                  SizedBox(height: 20.0),
                  //_botaoRegistrar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
