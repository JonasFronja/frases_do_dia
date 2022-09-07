import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _fraseGerada = "Clique aqui para gerar uma frase!";
  var _frases = [
    "O importante não é vencer todos os dias, mas lutar sempre.",
    "Maior que a tristeza de não haver vencido é a vergonha de não ter lutado!",
    "É melhor conquistar a si mesmo do que vencer mil batalhas.",
    "Difícil é ganhar um amigo em uma hora; fácil é ofendê-lo em um minuto.",
    "O medo de perder tira a vontade de ganhar.",
  ];

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              "$_fraseGerada",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color:Colors.black
              ),
            ),
            RaisedButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.black54,
              onPressed: _gerarFrase,
            )
          ],
        ),
      ),
    );
  }
}
