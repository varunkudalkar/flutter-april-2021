import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int redValue = 0;
  int greenValue = 0;
  int blueValue = 0;
  double opacity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RGB Colors'),
      ),
      body: Column(
        children: [
          Slider(
            value: redValue.toDouble(),
            min: 0,
            max: 255,
            activeColor: Colors.red,
            inactiveColor: Colors.grey,
            divisions: 255,
            label: '$redValue',
            onChanged: (value) {
              setState(() {
                redValue = value.toInt();
              });
            },
          ),
          Slider(
            value: greenValue.toDouble(),
            min: 0,
            max: 255,
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
            divisions: 255,
            label: '$greenValue',
            onChanged: (value) {
              setState(() {
                greenValue = value.toInt();
              });
            },
          ),
          Slider(
            value: blueValue.toDouble(),
            min: 0,
            max: 255,
            activeColor: Colors.blue,
            inactiveColor: Colors.grey,
            divisions: 255,
            label: '$blueValue',
            onChanged: (value) {
              setState(() {
                blueValue = value.toInt();
              });
            },
          ),
          Slider(
            value: opacity,
            min: 0,
            max: 1,
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            divisions: 10,
            label: '$opacity',
            onChanged: (value) {
              setState(() {
                opacity = value;
              });
            },
          ),
          Container(
            height: 100,
            width: 100,
            color: Color.fromRGBO(redValue, greenValue, blueValue, opacity),
          )
        ],
      ),
    );
  }
}
