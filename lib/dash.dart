import 'package:flutter/material.dart';
import 'latCheckBox.dart';
import 'latDropdownButton.dart';
import 'latTextButton.dart';
import 'latFloatingActionButton.dart';
import 'latIconButton.dart';
import 'latRadioButton.dart';
import 'latSlider.dart';
import 'latSwitch.dart';
import 'latTextField.dart';

class Dash extends StatefulWidget {
  const Dash({super.key});

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kumpulan Widget"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            child: SizedBox(
              width: 250,
              height: 350,
              child: Padding(padding: EdgeInsetsGeometry.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LatCheckBox(),));
          }, child: const Text("Halaman Checkbox")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LatDropdownButton(),));
          }, child: const Text("Halaman Drop Button")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Latfloatingactionbutton(),));
          }, child: const Text("Halaman Floating Action Button")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LatIconButton(),));
          }, child: const Text("Halaman Icon Button")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LatRadioButton(),));
          }, child: const Text("Halaman Radio Button")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LatSlider(),));
          }, child: const Text("Halaman Slider")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Lattextbutton(),));
          }, child: const Text("Halaman Text Button")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LatSwitch(),));
          }, child: const Text("Halaman Switch")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LatTextField(),));
          }, child: const Text("Halaman Text Field"))
                ],
              ),
              ),
            ),
          )
        ],
      ),
    );
  }
}