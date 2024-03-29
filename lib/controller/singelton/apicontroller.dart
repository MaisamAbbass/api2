import 'package:api2/api/timeapi.dart';
import 'package:api2/api/weatherapi.dart';
import 'package:api2/model/timezonemodel.dart';
import 'package:api2/model/weathermodel.dart';

class ApiController {
  ApiController._privateConstructor();
  static final ApiController irt = ApiController._privateConstructor();

  factory ApiController() {
    return irt;
  }
  final timezone _timezoneapi = timezone();
  final Weathernew _westherapi = Weathernew();

  Future<WeatherModel> getWeatherdataapicontroller(
      double lat, double lang) async {
    return await _westherapi.getWeatherDatafromapi(lat, lang);
  }

  Future<List<String>> getAllTimeZone() async {
    return await _timezoneapi.getAllZoneData();
  }

  Future<timezonemodel> gettimezonedataapicontroller(String zone) async {
    return await _timezoneapi.gettimeDatafromapi(zone);
  }
}
