// ignore_for_file: prefer_const_constructors, camel_case_types, sort_child_properties_last, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class popupwindow {
  final String errorinfo;
  popupwindow({required this.errorinfo});
  Alert popUp(BuildContext context) {
    return Alert(
      context: context,
      // type: AlertType.error,
      title: "INVALID INFO",
      desc: errorinfo,
      buttons: [
        DialogButton(
          color: Color(0xFFEB1555),
          child: Text(
            "BACK",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    );
  }
}
