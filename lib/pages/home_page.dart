import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:imc_calculator/widgets/input.dart';
import 'package:imc_calculator/widgets/logo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _alturaController = MaskedTextController(mask: '0.00');
    final _pesoController = MaskedTextController(mask: '000');

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: ListView(
          children: <Widget>[
            Logo(),
            Input(controller: _alturaController, label: 'Altura:',),
            Input(controller: _pesoController, label: 'Peso:',),
            
          ],
        ),
      ),
    );
  }
}
