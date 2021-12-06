part of themes;

abstract class DarkThemeData
{
  static ColorScheme scheme = ColorScheme(
      primary: Color(0xff1d1f33),
      primaryVariant: Color(0xff8E8E99),
      onPrimary: Color(0xffFFFFFF),

      secondary: Color(0xff101427),
      secondaryVariant: Color(0xff1D1F33),
      onSecondary: Color(0xff0C1234),

      surface: Color(0xffEA1556),
      onSurface: Color(0xffFFFFFF),

      background: Color(0xff090C22),
      onBackground: Color(0xffFFFFFF),

      error: Color(0xff750c0c),
      onError: Color(0xfff7fff5),

      brightness: Brightness.dark
  );

  static ThemeHolder getThemeHolder()
  {
    return new ThemeHolder(
        theme: ThemeData.dark().copyWith(
          primaryColor: scheme.primary,
          accentColor: scheme.secondary,
          scaffoldBackgroundColor: scheme.background,

          appBarTheme: AppBarTheme(
            color: scheme.primary,
          ),
        ),

        scheme: scheme
    );
  }
}
