import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Test App'),
      ),
      body: Column(
          // child: Image(
          // image:
          //     NetworkImage('https://flxt.tmsimg.com/assets/p170620_p_v10_an.jpg'),
          // image: AssetImage('assets/im-3.jpg'),
          // child: Image.network(
          //     'https://flxt.tmsimg.com/assets/p170620_p_v10_an.jpg'),
          // child: RaisedButton(
          //   onPressed: () {},
          //   child: Text('Click me'),
          //   color: Colors.amber,
          // ),
          // child: FlatButton(
          //   onPressed: () {},
          //   child: Text('Click me'),
          //   color: Colors.amber,
          // ),
          // child: RaisedButton.icon(
          //   onPressed: () {
          //     print('Raised icon button pressed!');
          //   },
          //   icon: Icon(Icons.email),
          //   label: Text('Send Email'),
          // ),
          children: [
            IconButton(
              onPressed: () {
                print('Icon Button Pressed!');
              },
              icon: Icon(Icons.add_outlined),
              color: Colors.blue,
              iconSize: 80,
            ),
            Text(
              'Counter 1',
              style: TextStyle(fontSize: 40),
            )
          ]),
    );
  }
}
