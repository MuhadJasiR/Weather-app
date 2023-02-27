import 'package:flutter/cupertino.dart';

import '../../../core/colors.dart';
import '../../../core/constraints.dart';

class SecondSection2 extends StatelessWidget {
  const SecondSection2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      decoration: BoxDecoration(
          color: kBlackColors, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Today",
                style: kGoogleFont,
              ),
              SizedBox(
                child: Image.network(
                  "https://icons.iconarchive.com/icons/icons8/ios7/256/Weather-Partly-Cloudy-Rain-icon.png",
                  height: 30,
                ),
              ),
              Text(
                "27\u00B0",
                style: kGoogleFont15,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "MON",
                style: kGoogleFontLight,
              ),
              SizedBox(
                child: Image.network(
                  "https://icons.iconarchive.com/icons/icons8/ios7/256/Weather-Partly-Cloudy-Rain-icon.png",
                  height: 30,
                ),
              ),
              Text(
                "27\u00B0",
                style: kGoogleFont15Light,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "TUE",
                style: kGoogleFontLight,
              ),
              SizedBox(
                child: Image.network(
                  "https://icons.iconarchive.com/icons/icons8/ios7/256/Weather-Partly-Cloudy-Rain-icon.png",
                  height: 30,
                ),
              ),
              Text(
                "27\u00B0",
                style: kGoogleFont15Light,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "WED",
                style: kGoogleFontLight,
              ),
              SizedBox(
                child: Image.network(
                  "https://icons.iconarchive.com/icons/icons8/ios7/256/Weather-Partly-Cloudy-Rain-icon.png",
                  height: 30,
                ),
              ),
              Text(
                "27\u00B0",
                style: kGoogleFont15Light,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "THURS",
                style: kGoogleFontLight,
              ),
              SizedBox(
                child: Image.network(
                  "https://icons.iconarchive.com/icons/icons8/ios7/256/Weather-Partly-Cloudy-Rain-icon.png",
                  height: 30,
                ),
              ),
              Text(
                "27\u00B0",
                style: kGoogleFont15Light,
              )
            ],
          )
        ],
      ),
    );
  }
}
