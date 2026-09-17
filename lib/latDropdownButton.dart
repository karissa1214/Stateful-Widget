import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Satu',
  'Dua',
  'Tiga',
  'Empat',
];

class LatDropdownButton extends StatefulWidget {
  const LatDropdownButton({super.key});

  @override
  State<LatDropdownButton> createState() => _LatDropdownButtonState();
}

class _LatDropdownButtonState extends State<LatDropdownButton> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Dropdown Button'),
      ),
      body: Center(
        child: DropdownMenu<String>(
          initialSelection: list.first,
          onSelected: (String? value) {
            setState(() {
              dropdownValue = value!;
            });
          },
          dropdownMenuEntries:
              list.map<DropdownMenuEntry<String>>((String value) {
            return DropdownMenuEntry<String>(
              value: value,
              label: value,
            );
          }).toList(),
        ),
      ),
    );
  }
}