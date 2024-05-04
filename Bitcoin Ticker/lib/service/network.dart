import 'package:http/http.dart';
import 'dart:convert';

const apiKey = "2E00BDC9-6DA9-4695-B1CC-25D48125423A";

class NetworkHelp {
  String currency;
  NetworkHelp({required this.currency});
  

  Future getRate() async {
   final String url =
      'https://rest.coinapi.io/v1/exchangerate/BTC/$currency?apikey= $apiKey'; 
      Response response = await get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
