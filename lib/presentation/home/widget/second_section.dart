import 'package:flutter/cupertino.dart';

import '../../../core/colors.dart';
import '../../../core/constraints.dart';

class SecondSection1 extends StatelessWidget {
  const SecondSection1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
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
                "Sunrise",
                style: kGoogleFont,
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
                "Sunset",
                style: kGoogleFont,
              ),
              Text(
                "17\u00B0",
                style: kGoogleFont15,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Moonrise",
                style: kGoogleFont,
              ),
              Text(
                "11\u00B0",
                style: kGoogleFont15,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Moonset",
                style: kGoogleFont,
              ),
              Text(
                "12\u00B0",
                style: kGoogleFont15,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Moon phase",
                style: kGoogleFont,
              ),
              Text(
                "15\u00B0",
                style: kGoogleFont15,
              )
            ],
          )
        ],
      ),
    );
  }
}
