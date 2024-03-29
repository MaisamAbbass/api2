import 'dart:convert';
import 'package:api2/model/timezonemodel.dart';
import 'package:http/http.dart' as http;

class timezone {
  Future<timezonemodel> gettimeDatafromapi(String zone) async {
    String url = 'http://worldtimeapi.org/api/timezone/$zone';
    var response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);
    return timezonemodel.fromJson(data);
  }

  Future<List<String>> getAllZoneData() async {
    String url = 'https://worldtimeapi.org/api/timezone';
    List<String> TimeZone = [];
    var response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);
    data.forEach((val) {
      TimeZone.add(val.toString());
    });
    return TimeZone;
  }
}
