import 'package:flutter/foundation.dart';
import 'package:weather_app/domain/model/weather_model.dart';

class WeatherData with ChangeNotifier {
  Weather? weather;

  set setWeather(Weather? data) {
    weather = data;
    notifyListeners();
  }

  void setr(Weather? data) {
    weather = data;
    notifyListeners();
  }
}
