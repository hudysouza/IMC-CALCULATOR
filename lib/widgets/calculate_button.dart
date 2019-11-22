import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final Function calculate;
  CalculateButton({@required this.calculate});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      margin: EdgeInsets.all(20),
      child: RaisedButton(
        padding: EdgeInsets.only(
          top: 20,
          bottom: 20,
        ),
        color: Colors.purple,
        onPressed: calculate,
        child: Text(
          'CALCULAR',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
