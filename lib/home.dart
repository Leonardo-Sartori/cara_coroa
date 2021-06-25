import 'dart:math';

import 'package:cara_coroa/jogar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

void _jogar(){

  var itens = ["cara", "coroa"];
  var numero = Random().nextInt(itens.length);
  var resultado = itens[numero];

  Navigator.push(
    context, 
    MaterialPageRoute(builder: (context) => Jogar(resultado))); 
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(97, 189, 140, 1),  
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Padding(  
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _jogar,
                    child: Image.asset("images/botao_jogar.png"),
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