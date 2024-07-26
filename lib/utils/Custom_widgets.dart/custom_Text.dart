import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final int? letterSpacing;
  final String? headline;

  const CustomText({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.letterSpacing,
    this.headline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final  headlineStyle;
    if (headline == 'headline1') {
      headlineStyle = theme.displayLarge!;
    } else {
      headlineStyle = headline == 'headline2'
            ? theme.displayMedium!
            : headline == 'headline3'
                ? theme.displaySmall!
                : headline == 'headline4'
                    ? theme.headlineMedium!
                    : headline == 'headline5'
                        ? theme.headlineSmall!
                        : headline == 'headline6'
                            ? theme.titleLarge!
                            : theme.displayLarge!;
    }

    return Text(
      text,
      style: headlineStyle.copyWith(
        color: color,
        fontSize: fontSize,
        letterSpacing: letterSpacing?.toDouble(),
      ),
    );
  }
}
