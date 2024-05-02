import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import '../services/weather.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    _requestLocationPermission();
    getLocationData();
  }

  Future<void> _requestLocationPermission() async {
    if (await Permission.location.isGranted) {
      getLocationData();
    } else {
      var status = await Permission.location.request();
      if (status == PermissionStatus.granted) {
        getLocationData();
      } else {
        SystemNavigator.pop();
      }
    }
  }

  void getLocationData() async {
    WeatherModel weathermodel = WeatherModel();
    var weatherData = await weathermodel.getLocationWeather();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return LocationScreen(
          locationWeather: weatherData,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
