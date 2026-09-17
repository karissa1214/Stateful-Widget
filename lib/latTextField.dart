import 'package:flutter/material.dart';

class LatTextField extends StatelessWidget {
  const LatTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ],
        ),
      ),
    );
  }
}