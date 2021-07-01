import 'package:flutter/material.dart';

import 'TelaCliente.dart';
import 'TelaContato.dart';
import 'TelaEmpresa.dart';
import 'TelaServico.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //metodo para a navegação para a tela da empresa
  void _abrirEmpresa() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaEmpresa()));
  }
//metodo para a navegação para a tela de serviço
  void _abrirServico() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaServico()));
  }
//metodo para a navegação para a tela de cliente
  void _abrirCliente() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaCliente()));
  }
//metodo para a navegação para a tela de contato
  void _abrirContato() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaContato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //Centralizar um texto
        title: Center( child:Text("ATM Consultoria",textAlign: TextAlign.center),),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Colocar uma imagem
            Image.asset("imagens/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Definir uma imagem com licável
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("imagens/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirServico,
                    child: Image.asset("imagens/menu_servico.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirCliente,
                    child: Image.asset("imagens/menu_cliente.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirContato,
                    child: Image.asset("imagens/menu_contato.png"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
