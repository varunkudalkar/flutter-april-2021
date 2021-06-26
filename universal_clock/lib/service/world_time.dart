import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time;
  String date;
  String url;
  String flag;
  bool isDaytime;

  WorldTime({this.location, this.url, this.flag});

  Future<void> getTime() async {
    try {
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offsetHrs = data['utc_offset'].substring(1, 3);
      String offsetMin = data['utc_offset'].substring(4, 6);
      int minutes = (int.parse(offsetHrs) * 60) + (int.parse(offsetMin));
      DateTime now = DateTime.parse(datetime);

      now = now.add(Duration(minutes: minutes));

      time = DateFormat.jm().format(now);
      date = DateFormat.yMEd().format(now);
      isDaytime = (now.hour > 6 && now.hour < 19);
    } catch (e) {
      print('caught error: $e');
    }
  }
}
