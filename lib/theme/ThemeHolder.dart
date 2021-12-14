part of themes;

class ThemeHolder
{
  double paddingSize = 16.0;
  EdgeInsetsGeometry insets;

  BorderRadius borderRadius = BorderRadius.circular(8.0);

  double inkwellRadius = 128.0;

  int genderFlex = 48;
  int genderSpacerFlex = 2;
  double genderIconSize = 128.0;
  double genderFontSize = 16.0;
  FontWeight genderFontWeight = FontWeight.w700;


  int heightTopFlex = 20;

  int heightMiddleFlex = 45;
  double heightMiddleNumberSize = 40.0;
  FontWeight heightMiddleNumberWeight = FontWeight.w700;

  int heightSliderFlex = 35;
  double heightSliderThumbRadius = 12.5;
  double heightSliderOverlayOpacity = .125; // overlay around thumb-slider when pressed, focused or hovered
  double heightSliderTrackHeight = 1.0;


  double weightTextSize = 12.5;
  double weightWeightSize = 40.0;
  FontWeight weightWeightWeight = FontWeight.w700;

  int weageSpacerFlex = 2;
  int weageFlex = 48;
  int weageButtonFlex = 6;
  int weageButtonSpacerFlex = 2;
  double weageButtonRadius = 8.0;

  double ageTextSize = 12.5;
  double ageAgeSize = 40.0;
  FontWeight ageAgeWeight = FontWeight.w700;

  double bottomHeight = 64.0;
  double bottomTextSize = 16.0;




  ThemeData _theme;
  ColorScheme _scheme;

  ThemeHolder({
    ThemeData theme,
    ColorScheme scheme,
  }) {
    this._theme = theme;
    this._scheme = scheme;

    this.insets = EdgeInsets.all(this.paddingSize);
  }

  static ThemeHolder getThemeHolder([context]) {
    final bool isDark = context != null
        ? MediaQuery.of(context).platformBrightness == Brightness.dark
        : SchedulerBinding.instance.window.platformBrightness == Brightness.dark;

    return isDark
        ? DarkThemeData.getThemeHolder()
        : DarkThemeData.getThemeHolder(); // TODO replace with LightThemeData
  }

  //region getter setter methods
  ThemeData get themeData {
    return this._theme;
  }
  ColorScheme get scheme {
    return this._scheme;
  }
  //endregion
}
