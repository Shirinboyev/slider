import 'package:flutter/material.dart';

void main() {
  runApp(const SliderApp());
}

class SliderApp extends StatefulWidget {
  const SliderApp({super.key});

  @override
  State<SliderApp> createState() => _SliderAppState();
}

class _SliderAppState extends State<SliderApp> {
  double slider1 = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          Slider(
            max: 10,
            value: slider1,
            onChanged: (slider) {
              setState(() {
                slider1 = slider;
              });
            },
          ),
        ],
      )),
    );
  }
}
