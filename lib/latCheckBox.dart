import 'package:flutter/material.dart';

class LatCheckBox extends StatefulWidget {
  const LatCheckBox({super.key }) ;

  @override
  State<LatCheckBox> createState() => _LatCheckBoxState();
}

class _LatCheckBoxState extends State<LatCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('latihan CheckBox')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked  = value!;
              });
            }
          )
        ],
      ),
      
    );
  }
}