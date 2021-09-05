import 'package:flutter/material.dart';
import 'package:responsive_portfolio/models/Project.dart';
import 'package:responsive_portfolio/responsive.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobile(context)
                ? 3
                : Responsive.isMobileLarge(context)
                    ? 3
                    : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              height: Responsive.isMobile(context)
                  ? 1.5
                  : Responsive.isMobileLarge(context)
                      ? 1.5
                      : 1,
            ),
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              "Read More>>",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
