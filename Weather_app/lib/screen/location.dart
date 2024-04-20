import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;
  void getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.lowest);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
    print("lat: $latitude");
    print("long: $longitude");
  }
}
