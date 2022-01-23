import 'package:flutter/material.dart';

InputDecoration buildInputDecoration({required String hintText, required Icon individualIcon}) {
    return InputDecoration(
        fillColor: Colors.white,
        prefixIcon: individualIcon ,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            color: Colors.grey.shade800,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            color: Colors.grey.shade800,
          ), 
        ),
        hintText: hintText,
      );
}

