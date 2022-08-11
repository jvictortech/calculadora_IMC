import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imc2/main.dart';
import 'package:imc2/screens/home.dart';

TextEditingController _weightController = TextEditingController();
TextEditingController _heigthController = TextEditingController();

TextFormField buildTextFormField({TextEditingController controller, String error,
String label}) 
return TextFormField(
  keyboardType: TextInputType.number,
  decoration: InputDecoration(labelText: label),
  controller: controller,
  validator: (text), {
    return
  }
)