import 'package:flutter/material.dart';

class MoedaDetail extends StatelessWidget {
  final String moedaNome;

  MoedaDetail({
    Key key,
    @required this.moedaNome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$moedaNome'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Detalhe da Moeda',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              moedaNome,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
