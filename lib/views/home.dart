import 'package:atm/views/cliente.dart';
import 'package:atm/views/contato.dart';
import 'package:atm/views/empresa.dart';
import 'package:atm/views/servico.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeAtm extends StatefulWidget {
  const HomeAtm({Key? key}) : super(key: key);

  @override
  _HomeAtmState createState() => _HomeAtmState();
}

class _HomeAtmState extends State<HomeAtm> {
  void _abrirEmpresa() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Empresa()));
  }

  void _abrirServico() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Servico()));
  }

  void _abrirCliente() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Cliente()));
  }

  void _abrirContato() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("ATM Consultoria"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Column(children: [
            Image.asset("img/logo.png"),
            const SizedBox(
              height: 34,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _abrirEmpresa,
                  child: Image.asset("img/menu_empresa.png"),
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                GestureDetector(
                  onTap: _abrirServico,
                  child: Image.asset("img/menu_servico.png"),
                )
              ],
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _abrirCliente,
                  child: Image.asset("img/menu_cliente.png"),
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                GestureDetector(
                  onTap: _abrirContato,
                  child: Image.asset("img/menu_contato.png"),
                )
              ],
            )
          ])),
    );
  }
}
