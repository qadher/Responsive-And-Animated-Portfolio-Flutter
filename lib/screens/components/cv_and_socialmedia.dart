import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class CvAndSocialMedia extends StatelessWidget {
  const CvAndSocialMedia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Divider(),
        SizedBox(
          height: defaultPadding / 2,
        ),
        TextButton(
          onPressed: () {
            print("cv downloading...");
          },
          child: FittedBox(
            child: Row(
              children: [
                Text(
                  "DOWNLOAD CV",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ),
                SizedBox(
                  width: defaultPadding / 2,
                ),
                SvgPicture.asset("assets/icons/download.svg")
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: defaultPadding),
          color: Color(0xFF24242E),
          child: Row(
            children: [
              Spacer(),
              IconButton(
                onPressed: () {
                  print("linkedin clicked");
                },
                icon: SvgPicture.asset("assets/icons/linkedin.svg"),
              ),
              IconButton(
                onPressed: () {
                  print("github clicked");
                },
                icon: SvgPicture.asset("assets/icons/github.svg"),
              ),
              IconButton(
                onPressed: () {
                  print("twitter clicked");
                },
                icon: SvgPicture.asset("assets/icons/twitter.svg"),
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
