import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textfeild(String text1, String text2, IconButton iconbutton,
    TextInputType type, TextEditingController controller) {
  return TextFormField(
    style: TextStyle(
      color: Colors.black87,
    ),
    keyboardType: type,
    /////////////////////obscureText: true,
    controller: controller,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          )),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.black)),
      labelText: text1,
      hintText: text2,
      suffixIcon: iconbutton,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
    ),
  );
}
