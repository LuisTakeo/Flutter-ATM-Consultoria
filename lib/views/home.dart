import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeAtm extends StatefulWidget {
  const HomeAtm({Key? key}) : super(key: key);

  @override
  _HomeAtmState createState() => _HomeAtmState();
}

class _HomeAtmState extends State<HomeAtm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("ATM Consultoria"),
        backgroundColor: Colors.red,
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
                  child: Image.asset("img/menu_empresa.png"),
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                GestureDetector(
                  child: Image.asset("img/menu_servico.png"),
                )
              ],
            )
          ])),
    );
  }
}
