import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


import 'location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location currentLocation = Location();
    currentLocation.getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        /*body:  Center(
        child: ElevatedButton(
          onPressed: () {
            getLocation();
          },
          child: Text('Get Location'),
        ),
      ), */
        );
  }
}
