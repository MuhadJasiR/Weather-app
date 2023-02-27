import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/core/colors.dart';
import 'package:weather_app/core/constraints.dart';
import 'package:weather_app/domain/model/weather_model.dart';
import 'package:weather_app/infrastracture/state/state.dart';
import 'package:weather_app/infrastracture/webservice/weather_imp.dart';
import 'package:weather_app/presentation/home/widget/second_section.dart';

import 'widget/first_section.dart';
import 'widget/second_section2.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        title: Consumer<WeatherData>(
          builder: (context, value, child) {
            return Text(searchController.text);
          },
        ),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CupertinoSearchTextField(
                onTap: () async {
                  Weather? weatherResult = await FunctionDB.fetchWeather(
                      querySearch: searchController.text, context: context);

                  Provider.of<WeatherData>(context, listen: false).setWeather =
                      weatherResult;
                },
                controller: searchController,
              ),
              kHeight15,
              const FirstSection(),
              kHeight10,
              const Divider(
                thickness: 1,
                color: kWhiteColor,
              ),
              kHeight10,
              const SecondSection1(),
              kHeight15,
              const SecondSection2(),
              kHeight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: kBlackColors,
                          borderRadius: BorderRadius.circular(10)),
                      height: 175,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "HUMIDITY",
                              style: kGoogleFont,
                            ),
                            const Center(
                              child: CircleAvatar(
                                backgroundColor: kWhiteColor,
                                radius: 45,
                                child: CircleAvatar(
                                  backgroundColor: Color.fromARGB(133, 0, 0, 0),
                                  radius: 44,
                                  child: CircleAvatar(
                                    backgroundColor: kWhiteColor,
                                    radius: 25,
                                  ),
                                ),
                              ),
                            ),
                            Consumer<WeatherData>(
                              builder: (context, value, child) {
                                return value.weather != null
                                    ? Text(
                                        "${value.weather!.humidity}%",
                                        style: kGoogleFont20,
                                      )
                                    : const Text("0.0");
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  kWidth20,
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: kBlackColors,
                          borderRadius: BorderRadius.circular(10)),
                      height: 175,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "WIND SPEED",
                              style: kGoogleFont,
                            ),
                            const Center(
                              child: CircleAvatar(
                                  backgroundColor: kWhiteColor,
                                  radius: 45,
                                  child: CircleAvatar(
                                      backgroundColor:
                                          Color.fromARGB(133, 0, 0, 0),
                                      radius: 44,
                                      child: Icon(
                                        Icons.arrow_circle_up_rounded,
                                        size: 70,
                                        color: kWhiteColor,
                                      ))),
                            ),
                            Consumer<WeatherData>(
                              builder: (context, value, child) {
                                return value.weather != null
                                    ? Text(
                                        "${value.weather!.windKph} KPH",
                                        style: kGoogleFont20,
                                      )
                                    : const Text("0.0 KPH");
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              kHeight20,
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: kBlackColors,
                        borderRadius: BorderRadius.circular(10)),
                    height: 175,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Consumer<WeatherData>(
                            builder: (context, value, child) {
                              return value.weather != null
                                  ? Text(
                                      "${value.weather!.text}",
                                      style: kGoogleFont,
                                    )
                                  : const Text("Condition");
                            },
                          ),
                          Center(
                            child: CircleAvatar(
                                backgroundColor: kWhiteColor,
                                radius: 45,
                                child: Image.network(
                                  "https://icons.iconarchive.com/icons/icons8/ios7/256/Weather-Partly-Cloudy-Rain-icon.png",
                                  height: 60,
                                )),
                          ),
                          Consumer<WeatherData>(
                            builder: (context, value, child) {
                              return value.weather != null
                                  ? Text(
                                      "${value.weather!.localTime}",
                                      style: kGoogleFont,
                                    )
                                  : const Text("");
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                kWidth20,
                Expanded(
                    child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 90,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "FEELS LIKE",
                        style: kGoogleFont,
                      ),
                      Consumer<WeatherData>(
                        builder: (context, value, child) {
                          return value.weather != null
                              ? Text(
                                  "${value.weather!.feelsLike}",
                                  style: kGoogleFont20,
                                )
                              : const Text("0.0\u00B0");
                        },
                      )
                    ],
                  ),
                ))
              ])
            ],
          ),
        ),
      ),
    );
  }
}
