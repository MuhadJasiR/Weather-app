import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:weather_app/core/constraints.dart';

import '../../domain/model/weather_model.dart';
import 'package:http/http.dart' as http;

class FunctionDB {
  static Future<Weather?> fetchWeather(
      {required String querySearch, required BuildContext context}) async {
    Weather data;
    try {
      const apiKey = " c3db70dbd9634368ae6183747231802";
      final baseUrl =
          "http://api.weatherapi.com/v1/current.json?key= $apiKey&q=$querySearch&aqi=no";
      final response = await http.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        log(response.body);
        final weatherData = jsonDecode(response.body) as Map<String, dynamic>;
        data = Weather.fromJson(weatherData);
        log(data.country.toString());

        return data;
      } else {
        throw Exception("failed to fetch data from the server");
      }
    } catch (e) {
      log("not connected to internet");
      showDialog(
          context: context,
          builder: ((context) => AlertDialog(
                content: Row(
                  children: const [
                    Text("Something went wrong..."),
                    kWidth15,
                    Icon(Icons
                        .signal_wifi_statusbar_connected_no_internet_4_sharp)
                  ],
                ),
              )));
    }
    return null;
  }
}
