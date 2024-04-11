import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Contato extends StatefulWidget {
  const Contato({Key? key}) : super(key: key);

  @override
  _ContatoState createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("img/detalhe_cliente.png"),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Clientes"),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Image.asset("img/cliente1.png"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Empresa de Software"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Image.asset("img/cliente2.png"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Empresa de Software"),
            ),
          ],
        ),
      ),
    );
  }
}
