
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ListaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        actions: [ GestureDetector(
            child: Icon(Icons.more_vert),
          onTap: () {
              Navigator.pushReplacementNamed(context, '/');
          },
        )],
        title: Text("@Contatinhos"),
      ),
      body: ListView.builder(
          itemCount:10 ,
          itemBuilder: (ctxt, index){
            return ListTile(
              leading: Icon(Icons.person),
              title: Text("Item ${index}"),
              subtitle: Text("8888-8888"),
              trailing: Icon(Icons.delete),
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.pushNamed(context, '/cadastro');
        },
      ),
    );
  }
}