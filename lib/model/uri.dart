import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:loyiha_ishi_ob_havo1/model/model.dart';

void main() async {
  http.Response response = await http.get(
    Uri.parse('http://api.weatherapi.com/v1/forecast.json?key=4c86cc5911e74b6abe9102831230203&q=samarkand&days=7'),
  );
}

Future getData() async {
  String url = 'https://randomuser.me/api';
  Uri uri = Uri.parse(url);
  http.Response response = await http.get(uri);
  Map<String, dynamic> data = jsonDecode(response.body);
  Model model = Model.fromJson(data);
}
