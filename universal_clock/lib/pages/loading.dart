import 'package:flutter/material.dart';
import 'package:universal_clock/service/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    WorldTime instance = WorldTime(location: 'Mumbai', url: 'Asia/Kolkata');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'time': instance.time,
      'date': instance.date,
      'isDaytime': instance.isDaytime
    });
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      body: SafeArea(
        child: Center(
          child: SpinKitPouringHourglass(
            color: Colors.black,
            size: 50,
          ),
        ),
      ),
    );
  }
}
