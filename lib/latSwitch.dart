import 'package:flutter/material.dart';

class LatSwitch extends StatefulWidget {
  const LatSwitch({super.key});

  @override
  State<LatSwitch> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<LatSwitch> {
  bool _isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Switch'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Switch(
              value: _isSwitchOn,
              activeColor: Colors.blue,
              onChanged: (bool value) {
                setState(() {
                  _isSwitchOn = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Status Switch: ${_isSwitchOn ? 'Aktif' : 'Nonaktif'}',
            ),
          ],
        ),
      ),
    );
  }
}