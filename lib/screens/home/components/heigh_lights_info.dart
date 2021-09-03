import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_portfolio/components/animated_counter.dart';
import 'package:responsive_portfolio/responsive.dart';
import 'package:responsive_portfolio/screens/home/components/heigh_light.dart';

import '../../../constants.dart';

class HeighLightsInfo extends StatelessWidget {
  const HeighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AniamtedCounter(
                        value: 119,
                        text: "K+",
                      ),
                      label: "Subscribers",
                    ),
                    HeighLight(
                      counter: AniamtedCounter(
                        value: 40,
                        text: "+",
                      ),
                      label: "Videos",
                    ),
                ],
                ),
                const SizedBox(height: defaultPadding,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AniamtedCounter(
                        value: 30,
                        text: "+",
                      ),
                      label: "Github Projects",
                    ),
                    HeighLight(
                      counter: AniamtedCounter(
                        value: 13,
                        text: "K+",
                      ),
                      label: "Stars",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AniamtedCounter(
                    value: 119,
                    text: "K+",
                  ),
                  label: "Subscribers",
                ),
                HeighLight(
                  counter: AniamtedCounter(
                    value: 40,
                    text: "+",
                  ),
                  label: "Videos",
                ),
                HeighLight(
                  counter: AniamtedCounter(
                    value: 30,
                    text: "+",
                  ),
                  label: "Github Projects",
                ),
                HeighLight(
                  counter: AniamtedCounter(
                    value: 13,
                    text: "K+",
                  ),
                  label: "Stars",
                ),
              ],
            ),
    );
  }
}
