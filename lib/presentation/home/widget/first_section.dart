import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/infrastracture/state/state.dart';

import '../../../core/constraints.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<WeatherData>(
                    builder: (context, value, child) => value.weather == null
                        ? const Text(
                            "No data found !..",
                            style: TextStyle(fontSize: 12, color: Colors.red),
                          )
                        : Text(
                            "${value.weather!.tempC}",
                            style: GoogleFonts.robotoSlab(
                                fontSize: 70, fontWeight: FontWeight.w300),
                          ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Consumer<WeatherData>(
                        builder: (context, value, child) {
                          return value.weather == null
                              ? const Text("")
                              : Text(
                                  "H : ${value.weather!.lot}\u00B0",
                                  style: kGoogleFont,
                                );
                        },
                      ),
                      kWidth15,
                      Consumer<WeatherData>(
                        builder: (context, value, child) {
                          return value.weather != null
                              ? Text(
                                  "L : ${value.weather!.lat}\u00B0",
                                  style: kGoogleFont,
                                )
                              : const Text("");
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 67, 67, 67),
              ),
              height: 75,
              width: 170,
              child: Center(
                child: Consumer(
                  builder: (context, value, child) {
                    return Text(
                      "AIR  QUALITY 27",
                      style: GoogleFonts.robotoSlab(
                          fontWeight: FontWeight.w400, fontSize: 13),
                    );
                  },
                ),
              ),
            ),
            kHeight10,
            Container(
              height: 75,
              width: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 255, 17, 0)),
              child: Center(
                child: Consumer<WeatherData>(
                  builder: (context, value, child) {
                    return value.weather != null
                        ? Text(
                            "UV  INDEX ${value.weather!.uv} ",
                            style: GoogleFonts.robotoSlab(
                                fontWeight: FontWeight.w400, fontSize: 13),
                          )
                        : Text("No Data...");
                  },
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
