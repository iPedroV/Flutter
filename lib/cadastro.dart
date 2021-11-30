
import 'package:flutter/material.dart';

class NovoScreen extends StatefulWidget {
  @override
  State<NovoScreen> createState() => _NovoScreenState();
  }

  class _NovoScreenState extends State<NovoScreen> {
  String _texto = 'Salvar';
  String _nome = '';
  String _telefone = '';

  void pressionaSalvar(BuildContext context){
    print("${_nome} : ${_telefone}");
    Navigator.pop(context);
  }

  void mantemPressionado() {
    setState(() => _texto = 'Pressionou pro mais de 500ms');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Contatinho"),
      ),
      body: Column(
        children: [
          TextField(
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(labelText: "Nome"),
            keyboardType: TextInputType.name,
            onChanged: (text) => setState(() => _nome = text),
          ),
          TextField(
              decoration: InputDecoration(labelText: "Telefone"),
              keyboardType: TextInputType.phone,
              onChanged: (text) => setState(() => _telefone = text)
          ),
          TextButton(child: Text(_texto),
            onPressed: (){ pressionaSalvar(context);},
            onLongPress: mantemPressionado,
          ),
        ],
      ),
    );
  }

}