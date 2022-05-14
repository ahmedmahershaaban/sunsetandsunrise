import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sunsetandsunrise/mode/sunrise_sunset_model.dart';

Future<SunriseSunsetModel> getSunsetAndSunRiseData(double lat, double lng, {DateTime? dateTime}) async {
  var url = Uri.parse(
      'https://api.sunrise-sunset.org/json?lat=$lat&lng=$lng&date=${dateTime == null ? 'today' : '${dateTime.year}-${dateTime.month}-${dateTime.day}'}');
  var response = await http.post(url);

  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  return SunriseSunsetModel.fromJson(jsonDecode(response.body));
}
