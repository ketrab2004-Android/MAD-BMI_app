part of pages;

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  Enums.Gender _gender = Enums.Gender.male;
  double _height = 180;
  int _weight = 74;
  int _age = 19;

  @override
  Widget build(BuildContext context) {
    final Constants.Texts texts = Constants.Texts.createFromLanguage();

    final Themes.ThemeHolder theme = Themes.ThemeHolder.getThemeHolder(context);
    final ColorScheme scheme = theme.scheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(texts.appTitle),
      ),
      body: Center(
        child: ListView(
          physics: new NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.all(theme.paddingSize * 2.0),
              child: Text(texts.recalculateButton),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: theme.bottomHeight,
        child: Widgets.InkyContainer(
          theme: theme,
          colour: theme.scheme.surface,
          splashColour: theme.scheme.onSurface,
          borderRadius: BorderRadius.zero,
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Text(
              texts.recalculateButton,
              style: TextStyle(
                fontSize: theme.bottomTextSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
