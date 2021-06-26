import 'package:flutter/material.dart';
import 'package:universal_clock/pages/home.dart';
import 'package:universal_clock/pages/loading.dart';
import 'package:universal_clock/pages/choose_location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
