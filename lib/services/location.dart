import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

class GeoLocation {
  double latitude;
  double longitude;

  Future<void> getLoc() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
