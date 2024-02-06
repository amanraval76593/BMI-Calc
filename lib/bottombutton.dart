// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'constant.dart';
import 'input_page.dart';
import 'calculator_brain.dart';
import 'result_Page.dart';
import 'popupwindow.dart';

class bottombutton extends StatefulWidget {
  const bottombutton({super.key});

  @override
  State<bottombutton> createState() => _bottombuttonState();
}

class _bottombuttonState extends State<bottombutton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            if (selectedGender != Gender.none) {
              Calculator_Brain calc =
                  Calculator_Brain(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return resultpage(
                  bmiresult: calc.getbmi(),
                  interpretation: calc.getinterpretation(),
                  result: calc.getresult(),
                );
              }));
            } else {
              var newWindow =
                  popupwindow(errorinfo: 'PLEASE SELECT THE GENDER');
              newWindow.popUp(context).show();
            }
            //Navigator.pushNamed(context, '/page1');
          },
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 15),
        color: Color(0xFFEB1555),
        width: double.infinity,
        height: kbottomheight,
        child: Center(
          child: Text(
            'CALCULATE',
            style: buttonstyle,
          ),
        ),
      ),
    );
  }
}
