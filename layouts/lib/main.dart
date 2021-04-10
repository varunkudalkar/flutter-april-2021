import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      // body: Container(
      //   padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
      //   margin: EdgeInsets.symmetric(vertical: 40),
      //   color: Colors.grey,
      //   child: Text(
      //     'Hello',
      //     style: TextStyle(
      //       fontSize: 40,
      //     ),
      //   ),
      // ),
      // body: Padding(
      //   padding: EdgeInsets.all(30),
      //   child: Text(
      //     'Hello',
      //     style: TextStyle(
      //       fontSize: 40,
      //       backgroundColor: Colors.grey,
      //     ),
      //   ),
      // ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Container(
      //       child: Text(
      //         'One',
      //         style: TextStyle(fontSize: 30),
      //       ),
      //       color: Colors.red,
      //     ),
      //     Container(
      //       child: Text(
      //         'Two',
      //         style: TextStyle(fontSize: 40),
      //       ),
      //       color: Colors.green,
      //     ),
      //     Container(
      //       child: Text(
      //         'Three',
      //         style: TextStyle(fontSize: 50),
      //       ),
      //       color: Colors.blue,
      //     ),
      //   ],
      // ),
      //
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Text(
              'One',
              style: TextStyle(fontSize: 50),
            ),
            color: Colors.red,
          ),
          Container(
            child: Text(
              'Two',
              style: TextStyle(fontSize: 50),
            ),
            color: Colors.green,
          ),
          Container(
            child: Text(
              'Three',
              style: TextStyle(fontSize: 50),
            ),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
