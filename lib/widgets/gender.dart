import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  final int genderValue;
  final Function change;
  Gender({
    @required this.genderValue,
    @required this.change,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        brightness: Brightness.dark,
        unselectedWidgetColor: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio(
                activeColor: Colors.white,
                value: 1,
                groupValue: genderValue,
                onChanged: change,
              ),
              Text(
                'Masculino',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Radio(
                activeColor: Colors.white,
                value: 2,
                groupValue: genderValue,
                onChanged: change,
              ),
              Text(
                'Feminino',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
