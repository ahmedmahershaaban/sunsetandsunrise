import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:get/get.dart';
import 'package:sunsetandsunrise/mode/sunrise_sunset_model.dart';
import 'package:sunsetandsunrise/services/gps_helper.dart';
import 'package:sunsetandsunrise/services/http_helper.dart';

class HomeViewModel extends GetxController {
  @override
  void onInit() async {
    await getCurrentData();

    super.onInit();
  }

  DateTime dateTime = DateTime.now();
  SunriseSunsetModel? sunriseSunsetModel;
  Future<void> getCurrentData() async {
    sunriseSunsetModel = null;
    update();
    Position position = await getCurrentLocation();

    sunriseSunsetModel = await getSunsetAndSunRiseData(
      position.latitude,
      position.longitude,
      dateTime: dateTime,
    );
    update();
  }

  /// This builds material date picker in Android
  Future<void> getTime(BuildContext context) async {
    final newDate = await showDatePicker(
      builder: (context, child) {
        return child!;
      },
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(2016),
      lastDate: DateTime(2050),
    );
    if (newDate == null) return;
    dateTime = newDate;
    sunriseSunsetModel = null;
    await getCurrentLocation();
    update();
  }
}
