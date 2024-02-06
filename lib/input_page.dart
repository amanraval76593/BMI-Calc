// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, void_checks, sort_child_properties_last, empty_constructor_bodies, unused_import, unused_local_variable, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constant.dart';
import 'result_Page.dart';
import 'calculator_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'bottombutton.dart';
import 'roundiconbutton.dart';
import 'popupwindow.dart';

enum Gender {
  male,
  female,
  none,
}

Gender selectedGender = Gender.none;
int height = 180;
int weight = 56;
int age = 10;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reusable_card(
                      onpress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      cardchild: IconContent(
                        data: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      ),
                      colour: selectedGender == Gender.male
                          ? activecardcolour
                          : inactivecardcolour,
                    ),
                  ),
                  Expanded(
                      child: Reusable_card(
                    onpress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardchild: IconContent(
                        icon: FontAwesomeIcons.venus, data: 'FEMALE'),
                    colour: selectedGender == Gender.female
                        ? activecardcolour
                        : inactivecardcolour,
                  )),
                ],
              ),
            ),
            Expanded(
              child: Reusable_card(
                  colour: activecardcolour,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: lablStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: heightstyle,
                          ),
                          Text(
                            'cm',
                            style: lablStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Color(0xFFEB1555),
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xFF8D8E98),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30),
                        ),
                        child: Slider(
                            value: height.toDouble(),
                            label: height.toString(),
                            min: 120,
                            max: 220,
                            onChanged: (double newvalue) {
                              setState(() {
                                height = newvalue.round();
                              });
                            }),
                      ),
                    ],
                  )),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Reusable_card(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: lablStyle,
                        ),
                        Text(
                          (weight.toString()),
                          style: heightstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 1) {
                                    weight--;
                                  } else {
                                    var newWindow = popupwindow(
                                        errorinfo:
                                            'WEIGHT CAN\'T BE LESS THAN 1');
                                    newWindow.popUp(context).show();
                                  }
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        )
                      ],
                    ),
                    colour: activecardcolour,
                  )),
                  Expanded(
                    child: Reusable_card(
                      cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: lablStyle,
                            ),
                            Text(
                              age.toString(),
                              style: heightstyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        if (age > 1) {
                                          age--;
                                        } else {
                                          var newWindow = popupwindow(
                                              errorinfo:
                                                  'AGE CAN\'T BE LESS THAN 1');
                                          newWindow.popUp(context).show();
                                        }
                                      });
                                    }),
                                SizedBox(
                                  width: 10,
                                ),
                                RoundIconButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    }),
                              ],
                            )
                          ]),
                      colour: activecardcolour,
                    ),
                  ),
                ],
              ),
            ),
            bottombutton(),
          ],
        ));
  }
}
