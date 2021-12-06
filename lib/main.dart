import 'package:flutter/material.dart';

import 'package:bmi_calculator/pages/pageLibrary.dart' as Pages;
import 'package:bmi_calculator/theme/themeLibrary.dart' as Themes;

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //print(MediaQuery.of(context));
    //final ThemeData theme = Themes.ThemeHolder.getThemeHolder(context).themeData;

    return MaterialApp(
      home: Pages.InputPage(),

      theme: Themes.DarkThemeData.getThemeHolder().themeData,
      //theme: theme,
    );
  }
}
