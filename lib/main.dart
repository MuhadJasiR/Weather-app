import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/infrastracture/state/state.dart';
import 'package:weather_app/infrastracture/webservice/weather_imp.dart';
import 'package:weather_app/presentation/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider(
          create: (context) => WeatherData(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: HomePage(),
      ),
    );
  }
}
