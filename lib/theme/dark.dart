part of themes;

class DarkThemeData extends LightThemeData
{
  static final Brightness brt = Brightness.dark;

  static final ThemeData theme = ThemeData(
    brightness: brt,

    primaryColor: Colors.indigo,
    accentColor: Colors.black87,

    appBarTheme: AppBarTheme(
      brightness: brt,
      color: Colors.indigo,
    ),

    fontFamily: 'Comic Sans',
  );
}
