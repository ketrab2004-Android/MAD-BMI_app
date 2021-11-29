part of themes;

class LightThemeData
{
  static final Brightness brt = Brightness.light;

  static final ThemeData theme = ThemeData(
    brightness: brt,

    primaryColor: Colors.lightBlueAccent,
    accentColor: Colors.white,

    appBarTheme: AppBarTheme(
      brightness: brt,
      color: Colors.lightBlueAccent,
    ),

    fontFamily: 'Comic Sans',
  );
}
