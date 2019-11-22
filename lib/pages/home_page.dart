import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:imc_calculator/widgets/calculate_button.dart';
import 'package:imc_calculator/widgets/gender.dart';
import 'package:imc_calculator/widgets/input.dart';
import 'package:imc_calculator/widgets/logo.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  int _genderValue = 1;
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _alturaController = MaskedTextController(mask: '0.00');
    final _pesoController = MaskedTextController(mask: '000');
    _calculate() {
      print(widget._genderValue);
      setState(() {
        widget._genderValue = 2;
      });
    }

    _changeGender(int value) {
      setState(() {
        widget._genderValue = value;
      });
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: ListView(
          children: <Widget>[
            Logo(),
            Input(
              controller: _alturaController,
              label: 'Altura:',
            ),
            Input(
              controller: _pesoController,
              label: 'Peso:',
            ),
            Gender(
              genderValue: widget._genderValue,
              change: _changeGender,
            ),
            CalculateButton(
              calculate: _calculate,
            ),
          ],
        ),
      ),
    );
  }
}
