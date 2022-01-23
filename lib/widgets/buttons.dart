  import 'package:flutter/material.dart';

RaisedButton Button({required String buttonText}) {
    return RaisedButton.icon(
        elevation: 0.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        color: Colors.blue.shade800,
        textColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 20.0),
        onPressed: () {}, 
        label: Text(buttonText, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400,)),
        icon: Icon(Icons.arrow_right_alt_rounded), );
  }
