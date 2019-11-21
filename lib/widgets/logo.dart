import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.purple[50],
            size: 200,
          ),
          Text(
            'CALCULADORA IMC',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w100,
            ),
          )
        ],
      ),
    );
  }
}
