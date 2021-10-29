

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [

          //Logo(),
          //Email(),
          //Senha(),
          //Entrar(),
          // Image.asset("asset/iesb.png") Terminar essa parte da LOGO
          Text(
            "Aluno Online",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0
            ),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "E-mail",
              border: OutlineInputBorder()
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Senha",
              border: OutlineInputBorder()
            ),
            obscureText: true,
          ),
          ElevatedButton(
            child: Text('ENTRAR'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: 10, vertical: 10
              ),
              textStyle: TextStyle(fontSize: 14),
            ),
            onPressed: (){},
          )
        ],
      ),
    );
  }
}

















