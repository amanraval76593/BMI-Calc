// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, camel_case_types, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

void defaultvalue() {}
typedef onpress = void Function();

class Reusable_card extends StatelessWidget {
  Reusable_card({
    required this.colour,
    required this.cardchild,
    this.onpress = defaultvalue,
  });
  final Color colour;
  final Widget cardchild;
  final onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15),
        ),
        child: cardchild,
      ),
    );
  }
}
