import 'package:flutter/material.dart';
import 'package:meuapp/cadastro.dart';
import 'package:meuapp/lista.dart';
import 'package:meuapp/login.dart';

void main() {
  runApp(MeuApp3());
}

class MeuApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar:AppBar(
            title: const Text("Meu Aplicativo"),
        ),
        body: Container(
          child: FlutterLogo(size: 64.0),
          margin: EdgeInsets.all(24),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue
          ),
        ),
      ),
    );
//Se quiser usar margin, usa o container
  }
}

class CenterLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: FlutterLogo(size: 64.0),
    );
  }
}

class MeuApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment(-1.0, 0.0), // Preenche tudo
          color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(size: 64.0),
            FlutterLogo(size: 64.0),
            FlutterLogo(size: 64.0),
          ],
        ),
      ),
      ),
    );
  }
}

class MeuApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Meu Aplicativo",
      theme: ThemeData(primarySwatch: Colors.indigo),

      routes: {
        '/': (context) => LoginScreen(),
        '/lista': (context) => ListaScreen(),
        '/cadastro': (context) => NovoScreen(),
    },
    );
  }
}

