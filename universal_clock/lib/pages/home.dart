import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isEmpty ? ModalRoute.of(context).settings.arguments : data;

    return Scaffold(
      backgroundColor: data['isDaytime'] ? Colors.blue[200] : Colors.blue[900],
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FlatButton.icon(
              onPressed: () async {
                dynamic result =
                    await Navigator.pushNamed(context, '/location');
                if (result != null) {
                  setState(() {
                    data = result;
                  });
                }
              },
              icon: Icon(Icons.location_city),
              label: Text(
                '${data['location']}',
                style: TextStyle(fontSize: 35),
              ),
              color: Colors.blue[900],
              textColor: Colors.white,
            ),
            SizedBox(height: 100),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '${data['time']}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${data['date']}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
