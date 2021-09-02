import 'package:flutter/material.dart';
import 'package:responsive_portfolio/components/animated_progress_indicator.dart';

import '../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          label: 'Dart',
          percentage: 0.7,
        ),
        AnimatedLinearProgressIndicator(
          label: 'Java',
          percentage: 0.82,
        ),
        AnimatedLinearProgressIndicator(
          label: 'Kotlin',
          percentage: 0.55,
        ),
        AnimatedLinearProgressIndicator(
          label: 'HTML',
          percentage: 0.88,
        ),
        AnimatedLinearProgressIndicator(
          label: 'CSS',
          percentage: 0.69,
        ),
      ],
    );
  }
}

