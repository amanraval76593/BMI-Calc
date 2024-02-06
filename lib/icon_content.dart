// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
//import 'constant.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.data});
  final IconData icon;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        icon,
        size: 80,
      ),
      SizedBox(height: 15.0),
      Text(
        data,
        style: TextStyle(
          fontSize: 18,
          color: Color(0xFF8D8E98),
        ),
      ),
    ]);
  }
}
