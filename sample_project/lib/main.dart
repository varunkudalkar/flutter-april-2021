import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        centerTitle: true,
        backgroundColor: Colors.red[200],
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              print('settings button clicked');
            },
            tooltip: 'Settings',
          ),
          IconButton(
            icon: Icon(Icons.comment),
            onPressed: () {
              print('Comment button clicked');
            },
            tooltip: 'Settings',
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('User'),
                accountEmail: Text('user@example.com'),
                currentAccountPicture: CircleAvatar(child: Image.asset('')),
                otherAccountsPictures: [
                  CircleAvatar(
                    child: Text(
                      'A',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  CircleAvatar(
                    child: Text(
                      'B',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ]),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('List'),
              leading: Icon(Icons.list),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Hello, world!',
          style: TextStyle(
            fontFamily: 'TrainOne',
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.blue[900],
            letterSpacing: 2,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        backgroundColor: Colors.red[200],
      ),
    ),
  ));
}
