import 'package:flutter/material.dart';

import 'package:bmi_calculator/widget/widgetLibrary.dart' as Widgets;
import 'package:bmi_calculator/theme/themeLibrary.dart' as AppThemes;

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Widgets.InputPage(),

      theme: AppThemes.LightThemeData.theme,
      darkTheme: AppThemes.DarkThemeData.theme,
    );
  }
}
