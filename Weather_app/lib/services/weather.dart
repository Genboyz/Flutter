import 'package:weather_app/services/networking.dart';
import '../screen/location.dart';


const apiKey = "d1b61a2445ef8a86d32f10594af33fb2";

class WeatherModel {

  Future<dynamic> getLocationWeather() async{
     Location currentLocation = Location();
    await currentLocation.getCurrentLocation();
    var networkhelp = NetworkHelper(
        "https://api.openweathermap.org/data/2.5/weather?lat=${currentLocation.latitude}&lon=${currentLocation.longitude}&appid=$apiKey&units=metric");

    var weatherdata = await networkhelp.getData();
    return weatherdata;

  }
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
