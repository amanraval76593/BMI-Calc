// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:bmi_calculater/constant.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class resultpage extends StatelessWidget {
  resultpage(
      {required this.result,
      required this.bmiresult,
      required this.interpretation});
  final String result;
  final String bmiresult;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(
                  top: 35,
                ),
                child: Text(
                  'Your Result',
                  style: heightstyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Reusable_card(
                colour: activecardcolour,
                cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        result,
                        style: resulttextStyle,
                      ),
                      Text(
                        bmiresult,
                        style: bmitextstyle,
                      ),
                      Text(
                        interpretation,
                        style: tipstextstyle,
                        textAlign: TextAlign.center,
                      ),
                    ]),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: Color(0xFFEB1555),
                height: kbottomheight,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: buttonstyle,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

//  
// 