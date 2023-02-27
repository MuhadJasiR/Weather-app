import 'package:flutter/material.dart';

class Weather {
  String? name;
  String? country;
  String? lat;
  String? lot;
  String? tempC;
  String? condition;
  String? humidity;
  String? feelsLike;
  String? uv;
  String? windKph;
  String? text;
  String? localTime;

  Weather(
      {this.name,
      this.country,
      this.lat,
      this.lot,
      this.tempC,
      this.condition,
      this.humidity,
      this.feelsLike,
      this.uv,
      this.windKph,
      this.text,
      this.localTime});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        name: json["location"]["name"].toString(),
        country: json["location"]["country"].toString(),
        lat: json["location"]["lat"].toString(),
        lot: json["location"]["lon"].toString(),
        tempC: json["current"]["temp_c"].toString(),
        condition: json["current"]["temp_c"].toString(),
        humidity: json["current"]["humidity"].toString(),
        feelsLike: json["current"]["feelslike_c"].toString(),
        uv: json["current"]["uv"].toString(),
        windKph: json["current"]["wind_kph"].toString(),
        text: json["current"]["condition"]["text"],
        localTime: json["location"]["localtime"]);
  }
}
