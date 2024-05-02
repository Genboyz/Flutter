import 'package:http/http.dart';
import 'dart:convert';

const apiKey = "2E00BDC9-6DA9-4695-B1CC-25D48125423A";
class NetworkHelp {
  final String url = 'https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey= $apiKey';

  Future getData() async {
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
