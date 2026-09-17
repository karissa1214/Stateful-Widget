import 'package:flutter/material.dart';

class Lattextbutton extends StatelessWidget {
  const Lattextbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Enabled',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}