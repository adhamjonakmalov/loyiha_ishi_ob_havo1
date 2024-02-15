import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:loyiha_ishi_ob_havo1/model/weather_model.dart';
import 'package:loyiha_ishi_ob_havo1/servies/weather_api.dart';

class ModelProvider extends ChangeNotifier {
  List<WeatherModel> data = [];
  Future getData() async {
    final info = await WeatherApi().getData();
    data.add(info);
    notifyListeners();
  }
}
