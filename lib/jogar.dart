import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  
  String valor;

  Jogar(this.valor);

  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _voltar(){
    Navigator.pop(context);
  }
 
  @override
  Widget build(BuildContext context) {
    print(widget.valor);

    var caminhoImagem;
    if (widget.valor == "cara") {
      caminhoImagem = "images/moeda_cara.png";
    } else {
      caminhoImagem = "images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(97, 189, 140, 1),  
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(caminhoImagem),
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _voltar,
                    child: Image.asset("images/botao_voltar.png"),
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