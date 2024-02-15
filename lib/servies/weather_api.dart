import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart' as http;
import 'package:loyiha_ishi_ob_havo1/model/weather_model.dart';

class WeatherApi {
  Future<WeatherModel> getData() async {
    Uri url = Uri.parse('http://api.weatherapi.com/v1/forecast.json?key=4c86cc5911e74b6abe9102831230203&q=samarkand&days=7');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    WeatherModel weatherModel = WeatherModel.fromJson(data);
    return weatherModel;
  }
}
