import 'package:flutter/material.dart';

enum Gender { pria, wanita }

class LatRadioButton extends StatefulWidget {
  const LatRadioButton({super.key});

  @override
  State<LatRadioButton> createState() => Latradiobutton();
}

class Latradiobutton extends State<LatRadioButton> {
  Gender? _jenisKelamin = Gender.pria;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Radio Button'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              'Pilih Jenis Kelamin:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ListTile(
              title: const Text('Laki-Laki'),
              leading: Radio<Gender>(
                value: Gender.pria,
                groupValue: _jenisKelamin,
                onChanged: (Gender? value) {
                  setState(() {
                    _jenisKelamin = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Perempuan'),
              leading: Radio<Gender>(
                value: Gender.wanita,
                groupValue: _jenisKelamin,
                onChanged: (Gender? value) {
                  setState(() {
                    _jenisKelamin = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}