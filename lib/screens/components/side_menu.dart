import 'package:flutter/material.dart';
import 'package:responsive_portfolio/constants.dart';
import 'package:responsive_portfolio/screens/components/area_info_text.dart';
import 'package:responsive_portfolio/screens/components/coding.dart';
import 'package:responsive_portfolio/screens/components/cv_and_socialmedia.dart';
import 'package:responsive_portfolio/screens/components/knowledges.dart';
import 'package:responsive_portfolio/screens/components/my_info.dart';
import 'package:responsive_portfolio/screens/components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(
                    title: "Residence",
                    text: "India",
                  ),
                  AreaInfoText(
                    title: "City",
                    text: "Kasaragod",
                  ),
                  AreaInfoText(
                    title: "Age",
                    text: "21",
                  ),
                  Skills(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Coding(),
                  Knowledges(),
                  CvAndSocialMedia(),

                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

