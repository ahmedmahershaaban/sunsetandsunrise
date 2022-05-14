import 'package:geolocator/geolocator.dart';

Future<Position> getCurrentLocation() async {
  GeolocationStatus geolocationStatus = await Geolocator().checkGeolocationPermissionStatus();
  return await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
}
